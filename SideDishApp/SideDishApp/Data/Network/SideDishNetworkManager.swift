//
//  SideDishNetworkManager.swift
//  SideDishApp
//
//  Created by 오킹 on 2021/04/21.
//

import Foundation
import Combine

class SideDishNetworkManager {
    let networkManager = NetworkManager()
    
    func getSideDishes() -> AnyPublisher<[Dishes], NetworkError> {
        let url = Endpoint.get(path: "main").url
        print(url)
        return networkManager.get(url: url)
    }
}
