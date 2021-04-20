//
//  SidedishProcessing.swift
//  Sidedish
//
//  Created by Issac on 2021/04/19.
//

import Foundation

class SidedishProcessing {
    let sideDishNetworkCenter: SidedishNetworkCenter
    init() {
        self.sideDishNetworkCenter = SidedishNetworkCenter()
    }
    
    func getItems(completion: @escaping ([SidedishItem]) -> ()) {
        self.sideDishNetworkCenter.fetchItems { (result) in
            switch result {
            case .success(let sidedishOfCategory):
                completion(sidedishOfCategory.body)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}
