//
//  SidedishNetworkCenter.swift
//  Sidedish
//
//  Created by Issac on 2021/04/19.
//

import Foundation
import Alamofire

class SidedishNetworkCenter {
    let networking: Networking
    let dataManager: DataManager
    
    init() {
        self.networking = Networking()
        self.dataManager = DataManager()
    }
    
    func fetchItems(url: String, completion: @escaping (Result<[SidedishItem], AFError>) -> ()) {
        //MARK: - cache가 없으면
        self.networking.requestCategory(url: url) { (result) in
            switch result {
            case .success(let sidedishOfCategory):
                completion(.success(sidedishOfCategory.body))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
