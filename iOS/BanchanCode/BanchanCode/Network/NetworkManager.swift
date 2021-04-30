//
//  NetworkManager.swift
//  BanchanCode
//
//  Created by Song on 2021/04/22.
//

import Foundation
import Alamofire

class NetworkManager {
    
    func performRequest<T: Decodable>(urlString: String, completionHandler: @escaping (Result<T, Error>) -> Void) {
        AF.request(urlString, method: .get)
            .validate(statusCode: 200..<300)
            .responseDecodable(of: T.self) { response in
                switch response.result {
                case .success(let responseDTO):
                    completionHandler(.success(responseDTO))
                case .failure(let error):
                    completionHandler(.failure(error))
                }
            }
    }
    
    func performDataRequest(urlString: String, completion: @escaping (Data) -> Void) {
        AF.request(urlString, method: .get)
            .validate(statusCode: 200..<300)
            .responseData { response in
                switch response.result {
                case .success(let data):
                    completion(data)
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
    }
}
