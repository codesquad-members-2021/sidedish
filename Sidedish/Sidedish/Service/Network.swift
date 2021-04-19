//
//  Network.swift
//  Sidedish
//
//  Created by Issac on 2021/04/19.
//

import Foundation

class Network {
    let sessionManager: SessionManager
    let dataManager: DataManager
    
    init() {
        self.sessionManager = SessionManager()
        self.dataManager = DataManager()
    }
    
    func requestItems(url: URL, completionHandler: @escaping ([SidedishItem]) -> Void) {
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        self.sessionManager.requestItem(urlRequest: request) { (requestResult) in
            switch requestResult {
            case .success(let data):
                self.dataManager.decoding(decodable: [SidedishItem].self, data: data) { (decodingResult) in
                    switch decodingResult {
                    case .success(let sidedishItems):
                        completionHandler(sidedishItems)
                    case .failure(let decodingError):
                        print(decodingError.localizedDescription)
                    }
                }
            case .failure(let requestError):
                print(requestError.localizedDescription)
            }
        }
    }
}
