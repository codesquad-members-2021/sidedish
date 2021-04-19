//
//  SessionManager.swift
//  Sidedish
//
//  Created by Issac on 2021/04/19.
//

import Foundation

class SessionManager {
    func requestItem(urlRequest: URLRequest, completion: @escaping (Result<Data, Error>)-> Void) {
        URLSession.init(configuration: .default).dataTask(with: urlRequest) { (data, response, error) in
            if let data = data {
                completion(.success(data))
            } else if let error = error {
                completion(.failure(error))
            }
        }.resume()
    }
}
