//
//  NetworkManager.swift
//  Side-dish
//
//  Created by HOONHA CHOI on 2021/04/19.
//

import Foundation
import Combine

class NetworkManager {
    
    func getResource(path: Path, method: HTTPMethod) -> AnyPublisher<SideDishes, NetworkError> {
        guard let urlRequest = makeURLRequest(path: path, method: method) else {
            return Fail(error: NetworkError.invalidURL).eraseToAnyPublisher()
        }
        return URLSession.shared.dataTaskPublisher(for: urlRequest)
            .mapError { _ in
                NetworkError.invalidRequest
            }
            .tryMap{ data , response -> Data in
                guard let httpResponse = response as? HTTPURLResponse else {
                    throw NetworkError.invalidResponse
                }
                guard 200..<300 ~= httpResponse.statusCode else {
                    throw NetworkError.invalidStatusCode(httpResponse.statusCode)
                }
                guard !data.isEmpty else {
                    throw NetworkError.emptyData
                }
                return data
            }
            .decode(type: SideDishes.self, decoder: JSONDecoder())
            .mapError { _ in
                NetworkError.failParsing
            }
            .eraseToAnyPublisher()
    }
    
    private func makeURLRequest(path: Path, method: HTTPMethod) -> URLRequest? {
        guard let url = Endpoint.url(path: path) else {
            return nil
        }
        var request = URLRequest(url: url)
        request.httpMethod = method.rawValue
        return request
    }
}
