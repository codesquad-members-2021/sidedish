//
//  NetworkManager.swift
//  Side-dish
//
//  Created by HOONHA CHOI on 2021/04/19.
//

import Foundation
import Combine

protocol NetworkManageable {
    func requestResource(path: Path, method: HTTPMethod) -> AnyPublisher<SideDishes, NetworkError>
    func requestDetails(detailHash: String, method: HTTPMethod) -> AnyPublisher<ItemDetails, NetworkError>
}

class NetworkManager: NetworkManageable {
    
    func requestDetails(detailHash: String, method: HTTPMethod) -> AnyPublisher<ItemDetails, NetworkError> {
        guard let urlRequest = makeURLRequest(detailHash: detailHash, method: method) else {
            return Fail(error: NetworkError.invalidURL).eraseToAnyPublisher()
        }
        
        return URLSession.shared.dataTaskPublisher(for: urlRequest)
            .mapError { _ in
                NetworkError.invalidRequest
            }
            .flatMap { (data, response) -> AnyPublisher<ItemDetails, NetworkError> in
                guard let httpResponse = response as? HTTPURLResponse else {
                    return Fail(error: NetworkError.invalidResponse).eraseToAnyPublisher()
                }
                guard 200..<300 ~= httpResponse.statusCode else {
                    return Fail(error:NetworkError.invalidStatusCode(httpResponse.statusCode)).eraseToAnyPublisher()
                }
                return Just(data)
                    .decode(type: ItemDetails.self, decoder: JSONDecoder())
                    .mapError { _ in
                        NetworkError.failParsing
                    }.eraseToAnyPublisher()
            }.eraseToAnyPublisher()
    }
    
    func requestResource(path: Path, method: HTTPMethod) -> AnyPublisher<SideDishes, NetworkError> {
        guard let urlRequest = makeURLRequest(path: path, method: method) else {
            return Fail(error: NetworkError.invalidURL).eraseToAnyPublisher()
        }
        
        return URLSession.shared.dataTaskPublisher(for: urlRequest)
            .mapError { _ in
                NetworkError.invalidRequest
            }
            .flatMap { data, response -> AnyPublisher<SideDishes, NetworkError> in
                guard let httpResponse = response as? HTTPURLResponse else {
                    return Fail(error: NetworkError.invalidResponse).eraseToAnyPublisher()
                }
                guard 200..<300 ~= httpResponse.statusCode else {
                    return Fail(error:NetworkError.invalidStatusCode(httpResponse.statusCode)).eraseToAnyPublisher()
                }
                return Just(data)
                    .decode(type: SideDishes.self, decoder: JSONDecoder())
                    .mapError { _ in
                        NetworkError.failParsing
                    }.eraseToAnyPublisher()
            }.eraseToAnyPublisher()
    }
    
    private func makeURLRequest(path: Path, method: HTTPMethod) -> URLRequest? {
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
