//
//  NetworkManager.swift
//  BanchanCode
//
//  Created by Song on 2021/04/22.
//

import Foundation
import Alamofire

class NetworkManager {
    func performRequest(urlString: String, completionHandler: @escaping (DishesResponseDTO) -> ()) {
        AF.request(urlString, method: .get)
            .validate(statusCode: 200..<300)
            .responseDecodable(of: DishesResponseDTO.self) { (response) in
                switch response.result {
                case .success(let dishes):
                    completionHandler(dishes)
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
    }
}
