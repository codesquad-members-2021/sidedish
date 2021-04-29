//
//  NetworkManager.swift
//  BanchanCode
//
//  Created by Song on 2021/04/22.
//

import Foundation
import Alamofire

class NetworkManager {
    
    func isConnectedToInternet() -> Bool {        
        return Alamofire.NetworkReachabilityManager()?.isReachable ?? false
    }
    
    func performRequest(urlString: String, completionHandler: @escaping (Result<DishesResponseDTO,AFError>) -> Void) {
        AF.request(urlString, method: .get)
            .validate(statusCode: 200..<300)
            .responseDecodable(of: DishesResponseDTO.self) { response in
                switch response.result {
                case .success(let dishes):
                    completionHandler(.success(dishes))
                case .failure(let error):
                    completionHandler(.failure(error))
                }
            }
    }
    
    func performRequestDishDetail(urlString: String, completionHandler: @escaping (DishDetailResponseDTO) -> ()) {
        AF.request(urlString, method: .get)
            .validate(statusCode: 200..<300)
            .responseDecodable(of: DishDetailResponseDTO.self) { (response) in
                switch response.result {
                case .success(let dishDetail):
                    completionHandler(dishDetail)
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
    }
    
    func updateThumbImage(imageURL: String, completion: @escaping (Data) -> Void) {
        AF.request(imageURL, method: .get)
            .validate(statusCode: 200..<300)
            .responseData { (response) in
                switch response.result {
                case .success(let data):
                    completion(data)
                case .failure(let error):
                    print(error.localizedDescription)
                    break
                }
            }
    }
}
