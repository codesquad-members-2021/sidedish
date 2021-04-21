//
//  NetworkManager.swift
//  sidedishApp
//
//  Created by zombietux on 2021/04/20.
//

import Foundation
import Combine

protocol HttpMethodProtocol: class {
    func get<T>(type: T.Type, url: URL) -> AnyPublisher<T, Error> where T: Decodable
}

class NetworkManager: HttpMethodProtocol {
    func get<T>(type: T.Type, url: URL) -> AnyPublisher<T, Error> where T : Decodable {
        let urlRequest = URLRequest(url: url)
        print(urlRequest)
        
        return URLSession.shared.dataTaskPublisher(for: urlRequest)
            .map(\.data)
            .decode(type: T.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
}
