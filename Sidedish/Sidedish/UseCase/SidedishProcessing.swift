//
//  SidedishProcessing.swift
//  Sidedish
//
//  Created by Issac on 2021/04/19.
//

import Foundation
import Alamofire

class SidedishProcessing {
    let sideDishNetworkCenter: SidedishNetworkCenter
    init() {
        self.sideDishNetworkCenter = SidedishNetworkCenter()
    }
    
    func getItems(url: String, completion: @escaping (Result<[SidedishItem], AFError>) -> ()) {
        self.sideDishNetworkCenter.fetchItems(url: url) { (result) in
            switch result {
            case .success(let sidedishItems):
                completion(.success(sidedishItems))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
    func getImage(url: URL, completion: @escaping ((Data) -> ())) {
        self.sideDishNetworkCenter.fetchImage(url: url) { (data) in
            completion(data)
        }
    }
}
