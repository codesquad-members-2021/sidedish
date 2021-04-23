//
//  NetworkManager.swift
//  Side-dish
//
//  Created by HOONHA CHOI on 2021/04/19.
//

import Foundation
import Combine

protocol NetworkManageable {
    func requestResource(path: Menu, method: HTTPMethod) -> AnyPublisher<SideDishes, NetworkError>
    func requestDetails(detailHash: String, method: HTTPMethod) -> AnyPublisher<ItemDetails, NetworkError>
}

class NetworkManager: NetworkManageable {
    
    func requestDetails(detailHash: String, method: HTTPMethod) -> AnyPublisher<ItemDetails, NetworkError> {
        guard let urlRequest = makeURLRequest(detailHash: detailHash, method: method) else {
            return Fail(error: NetworkError.invalidURL).eraseToAnyPublisher()
        }
        return request(urlRequest: urlRequest, type: ItemDetails.self)
    }
    
    func requestResource(path: Menu, method: HTTPMethod) -> AnyPublisher<SideDishes, NetworkError> {
        guard let urlRequest = makeURLRequest(path: path, method: method) else {
            return Fail(error: NetworkError.invalidURL).eraseToAnyPublisher()
        }
        return request(urlRequest: urlRequest, type: SideDishes.self)
    }
    
    private func request<T>(urlRequest: URLRequest, type : T.Type) -> AnyPublisher<T, NetworkError>  where T: Decodable {
        return URLSession.shared.dataTaskPublisher(for: urlRequest)
            .mapError { _ in
                NetworkError.invalidRequest
            }
            .flatMap { (data, response) -> AnyPublisher<T, NetworkError> in
                guard let httpResponse = response as? HTTPURLResponse else {
                    return Fail(error: NetworkError.invalidResponse).eraseToAnyPublisher()
                }
                guard 200..<300 ~= httpResponse.statusCode else {
                    return Fail(error:NetworkError.invalidStatusCode(httpResponse.statusCode)).eraseToAnyPublisher()
                }
                return Just(data)
                    .decode(type: T.self, decoder: JSONDecoder())
                    .mapError { _ in
                        NetworkError.failParsing
                    }.eraseToAnyPublisher()
            }.eraseToAnyPublisher()
    }
    
    
    private func makeURLRequest(path: Menu, method: HTTPMethod) -> URLRequest? {
        guard let url = Endpoint.url(path: path) else {
            return nil
        }
        var request = URLRequest(url: url)
        request.httpMethod = method.rawValue
        return request
    }
    
    private func makeURLRequest(detailHash: String, method: HTTPMethod) -> URLRequest? {
        guard let url = Endpoint.url(detailHash: detailHash) else {
            return nil
        }
        var request = URLRequest(url: url)
        request.httpMethod = method.rawValue
        return request
    }
}
