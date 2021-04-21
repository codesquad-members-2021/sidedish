//
//  NetworkManager.swift
//  sidedish
//
//  Created by Song on 2021/04/21.
//

import Foundation

class NetworkManager {
    
    private let requestManager: RequestManager
    private let jsonManager: JsonManager
    private let urlSession: URLSession
    
    init(requestManager: RequestManager, jsonManager: JsonManager){
        self.requestManager = requestManager
        self.jsonManager = jsonManager
        self.urlSession = URLSession(configuration: .default)
    }
    
    func request<T: Codable, E: Codable>(path: String, bodyData: T?, requestType: RequestType, decodingType: E.Type,
                             completion: @escaping (Result<E, Error>) -> Void) {

        let body = jsonManager.encode(data: bodyData)
        guard let httpRequest = requestManager.create(path: path,
                                                      body: body,
                                                      requestType: requestType) else { return }
        
        let dataTask = urlSession.dataTask(with: httpRequest) { (data, response, error) in
            guard let response = response as? HTTPURLResponse else { return }
            
            if (200...299) ~= response.statusCode {
                guard let data = data,
                      let decodedData = self.jsonManager.decode(type: decodingType, data: data) else { return }
                completion(.success(decodedData))
            } else {
                guard let error = error else { return }
                completion(.failure(error))
            }
        }
        
        dataTask.resume()
    }
}
