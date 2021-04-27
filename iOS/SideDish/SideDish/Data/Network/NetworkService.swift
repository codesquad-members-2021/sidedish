//
//  NetworkService.swift
//  SideDish
//
//  Created by 지북 on 2021/04/21.
//

import Foundation
import Combine

protocol NetworkService {
    func request<T:Decodable>(with endPoint: Requestable, dataType: T.Type)
    -> AnyPublisher<T, NetworkError>
    func decode<T: Decodable>(data: Data, dataType: T.Type) -> AnyPublisher<T, NetworkError>
}

public class DefaultNetworkSerivce: NetworkService {
    
    init() {
    }
    
    func request<T:Decodable>(with endPoint: Requestable, dataType: T.Type)
    -> AnyPublisher<T, NetworkError> {
        
        guard let url = endPoint.url() else {
            let error = NetworkError.network(description: "Couldn't create URL")
            return Fail(error: error).eraseToAnyPublisher()
        }
        
        var request = URLRequest(url: url)
        request.httpBody = nil
        request.httpMethod = endPoint.httpMethod.rawValue
        
        return URLSession.shared.dataTaskPublisher(for: request)
            .mapError { error in
                .network(description: error.localizedDescription)
            }
            .flatMap(maxPublishers: .max(1)) { pair in
                self.decode(data: pair.data, dataType: T.self)
            }
            .eraseToAnyPublisher()
    }
    
    func decode<T: Decodable>(data: Data, dataType: T.Type) -> AnyPublisher<T, NetworkError> {
      let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
      
      // Just는 오직 하나의 값만을 출력하고 끝나게되는 가장 단순한 형태의 Publisher
      // Combine Framework 에서 빌트인형태로 제공하는 Publisher
      // 인자로 받는 값의 타입을 Output 타입으로 실패타입은 항상 Never로 리턴
      return Just(data)
        .decode(type: T.self, decoder: decoder)
        // 기본적으로 map과 같은역할. error가 발생하면 해당 error 를 내가 원하는 error 타입으로 바꿔준다.
        .mapError { error in
          .parsing(description: error.localizedDescription)
        }
        .eraseToAnyPublisher()
        // Operation에서 데이터를 처리할 땐 Operation 상호 간 에러 처리나 혹은 스트림 제어를 위해서
        // 데이터 형식을 알아야 하지만 Subscriber 에게 전달될 땐 필요가 없다.
        // 따라서 최종적인 형태로 데이터를 전달할 땐 eraseToAnyPublisher() 를 사용하게 된다.
    }
}

enum NetworkError: Error {
    case parsing(description: String)
    case network(description: String)
}

public enum HttpMethod: String {
    case get = "GET"
    case post = "POST"
}
