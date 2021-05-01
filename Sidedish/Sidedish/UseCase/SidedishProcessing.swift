//
//  SidedishProcessing.swift
//  Sidedish
//
//  Created by Issac on 2021/04/19.
//

import Foundation
import Alamofire

protocol SidedishProcessable {
    func getItems(url: String, completion: @escaping (Result<[SidedishItem], AFError>) -> ())
    func getDetail(url: String, completion: @escaping (Result<DetailItem, AFError>) -> ())
    func getImage(url: URL, completion: @escaping ((Data) -> ()))
}

class SidedishProcessing: SidedishProcessable {
    let sideDishNetworkCenter: Networkable
    init(networkable: Networkable) {
        self.sideDishNetworkCenter = networkable
    }
    
    func getItems(url: String, completion: @escaping (Result<[SidedishItem], AFError>) -> ()) {
        self.sideDishNetworkCenter.fetchItem(url: url) { (result: Result<SidedishOfCategory, AFError>) in
            switch result {
            case .success(let SidedishOfCategory):
                completion(.success(SidedishOfCategory.body))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
    func getDetail(url: String, completion: @escaping (Result<DetailItem, AFError>) -> ()) {
        self.sideDishNetworkCenter.fetchItem(url: url) { (result: Result<Detail, AFError>) in
            switch result {
            case .success(let detail):
                completion(.success(detail.data))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
    func getImage(url: URL, completion: @escaping ((Data) -> ())) {
        self.sideDishNetworkCenter.downloadImage(from: url) { (data) in
            completion(data)
        }
    }
}
