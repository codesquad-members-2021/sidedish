//
//  SidedishNetworkCenter.swift
//  Sidedish
//
//  Created by Issac on 2021/04/19.
//

import Foundation

class SidedishNetworkCenter {
    let networking: Networking
    let dataManager: DataManager
    
    init() {
        self.networking = Networking()
        self.dataManager = DataManager()
    }
    
    func fetchItems(completion: @escaping (Result<SidedishOfCategory, Error>) -> ()) {
        let url = "https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/main"
        self.networking.requestMainCagegiry(url: url) { (result) in
            switch result {
            case .success(let value):
                let data = self.dataManager.parseData(of: value)
                self.dataManager.decoding(decodable: SidedishOfCategory.self, data: data, completion: completion)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}
