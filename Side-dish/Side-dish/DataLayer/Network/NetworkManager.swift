//
//  NetworkManager.swift
//  Side-dish
//
//  Created by HOONHA CHOI on 2021/04/19.
//

import Foundation
import Combine

protocol NetworkManageable {
    func requestResource<T, U: Decodable>(path: T, method: HTTPMethod, deocdeType: U.Type) -> AnyPublisher<U, NetworkError>
    func requestOrder(method: HTTPMethod, body: Data) -> AnyPublisher<Int, NetworkError>
}

final class NetworkManager: NetworkManageable {
    
    func requestResource<T, U: Decodable>(path: T, method: HTTPMethod, deocdeType: U.Type) -> AnyPublisher<U, NetworkError> {
        guard let urlRequest = makeURLRequest(path: path, method: method) else {
            return Fail(error: NetworkError.invalidURL).eraseToAnyPublisher()
        }
        return request(urlRequest: urlRequest, type: deocdeType)
    }
    
    func requestOrder(method: HTTPMethod, body: Data) -> AnyPublisher<Int, NetworkError> {
        guard let urlRequset = makePostURLRequest(method: method, body: body) else {
            return Fail(error: NetworkError.invalidURL).eraseToAnyPublisher()
        }
        return requestPost(urlRequest: urlRequset)
    }
    
    private func request<T : Decodable>(urlRequest: URLRequest, type : T.Type) -> AnyPublisher<T, NetworkError> {
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
    
    private func requestPost(urlRequest: URLRequest) -> AnyPublisher<Int, NetworkError> {
        return URLSession.shared.dataTaskPublisher(for: urlRequest)
            .mapError { _ in
                NetworkError.invalidRequest
            }
            .tryMap { element -> Int in
                guard let httpResponse = element.response as? HTTPURLResponse else {
                    throw NetworkError.invalidResponse
                }
                guard 200..<300 ~= httpResponse.statusCode else {
                    throw NetworkError.invalidStatusCode(httpResponse.statusCode)
                }
                return httpResponse.statusCode
            }.mapError {
                $0 as! NetworkError
            }.eraseToAnyPublisher()
        }
    
    
    private func makeURLRequest<T>(path: T, method: HTTPMethod) -> URLRequest? {
        guard let url = Endpoint.url(path: path) else {
            return nil
        }
        var request = URLRequest(url: url)
        request.httpMethod = method.rawValue
        Endpoint.headers.forEach { (key, value) in
            request.setValue(value, forHTTPHeaderField: key)
        }
        return request
    }
    
    
    private func makePostURLRequest(method: HTTPMethod, body: Data) -> URLRequest? {
        guard let url = Endpoint.postURL() else {
            return nil
        }
        var request = URLRequest(url: url)
        request.httpMethod = method.rawValue
        request.httpBody = body
        Endpoint.headers.forEach { (key, value) in
            request.setValue(value, forHTTPHeaderField: key)
        }
        return request
    }
}
