//
//  Network.swift
//  SideDish
//
//  Created by sonjuhyeong on 2021/04/21.
//

import Foundation

class DataTaskManager {
    
    static let session = URLSession(configuration: .default)
    
    static func get(completion: @escaping (Result<getMenu, Error>) -> Void) {
        session.dataTask(with: RequestManager.getRequest()) { data, response, error in
            if let data = data {
                guard let menuList = ParsingManager.decodeData(type: getMenu.self, data: data) else { print("d"); return }
                completion(.success(menuList))
            } else {
                guard let error = error?.localizedDescription as? Error else { return }
                completion(.failure(error))
            }
        }.resume()
    }
  
}
