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
    
    func performRequest(urlString: String, completionHandler: @escaping (DishesResponseDTO) -> ()) {
        AF.request(urlString, method: .get)
            .validate(statusCode: 200..<300)
            .responseDecodable(of: DishesResponseDTO.self) { (response) in
                switch response.result {
                case .success(let dishes):
                    completionHandler(dishes)
                case .failure(let error):
                    print(error)
                    //아이폰 네트워크 종료 후 돌릴 시 이 곳에서 error가 체크된다.
                    //URLSessionTask failed with error: A data connection is not currently allowed.
//                    let dish = self.realm.object(ofType: DishDB.self, forPrimaryKey: 1)                
//                    print("에러에러",error.localizedDescription, dish?.categoryName, dish?.id, dish?.name)
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
