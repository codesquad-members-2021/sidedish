//
//  MockNetworkManager.swift
//  SideDishApp
//
//  Created by 이다훈 on 2021/04/27.
//

import Foundation
import Combine

protocol URLSessionProtocol {
    func dataTaskPublisher(for url: URL) -> URLSession.DataTaskPublisher
}

extension URLSession : URLSessionProtocol{
}

struct MockNetworkSessionSuccess : URLSessionProtocol {
    func dataTaskPublisher(for url: URL) -> URLSession.DataTaskPublisher {
        
        return URLSession.shared.dataTaskPublisher(for: Bundle.main.url(forResource: "testData", withExtension: "json")!)
    }
}

class MockNetworkManager : NetworkManager {
    override func get<T>(url: URL?) -> AnyPublisher<T, NetworkError> where T : Decodable {
        
        guard let myUrl = url else {
            return Fail(error: NetworkError.urlError).eraseToAnyPublisher()
        }
        
        return session.dataTaskPublisher(for: myUrl)
            .mapError { _ in NetworkError.networkConnection }
            .flatMap { data, response -> AnyPublisher<T, NetworkError> in
                return Just(data)
                    .decode(type: T.self, decoder: JSONDecoder())
                    .mapError { error in
                        print(error.localizedDescription)
                        return NetworkError.parsing }.eraseToAnyPublisher()
            }.eraseToAnyPublisher()
    }
    
    
}


