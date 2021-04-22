//
//  NetworkManager.swift
//  SideDishApp
//
//  Created by 오킹 on 2021/04/21.
//

import Foundation
import Combine

protocol NetworkManageable {
    func get<T>(url: URL?) -> AnyPublisher<T, NetworkError> where T: Decodable
}

class NetworkManager: NetworkManageable {
    
    func get<T>(url: URL?) -> AnyPublisher<T, NetworkError> where T: Decodable {
        guard let myUrl = url else {

            return Fail(error: NetworkError.urlError).eraseToAnyPublisher()
        }
        
        return URLSession.shared.dataTaskPublisher(for: myUrl)
            .mapError { _ in NetworkError.networkConnection }
    
            .flatMap { data, response -> AnyPublisher<T, NetworkError> in
                guard let httpResponse = response as? HTTPURLResponse else {
                    return Fail(error: NetworkError.responseNil).eraseToAnyPublisher()
                }
                guard 200..<300 ~= httpResponse.statusCode else {
                    return Fail(error: NetworkError.unknown).eraseToAnyPublisher()
                }
                return Just(data)
                    .decode(type: T.self, decoder: JSONDecoder())
                    .mapError { _ in NetworkError.parsing }.eraseToAnyPublisher()
            }.eraseToAnyPublisher()
    }
}

enum NetworkError: Error {
    case urlError
    case networkConnection
    case responseNil
    case parsing
    case unknown
 
    var description: String {
        switch self {
        case .urlError:
            return "url 오류"
        case .responseNil:
            return "응답 없음"
        case .networkConnection:
          return "네트워크 연결 실패"
        case .parsing:
          return "파싱 실패"
        case .unknown:
          return "알 수 없는 오류"
      
        }
    }
}
