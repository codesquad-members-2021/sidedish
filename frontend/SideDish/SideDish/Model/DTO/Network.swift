//
//  Network.swift
//  SideDish
//
//  Created by sonjuhyeong on 2021/04/21.
//

import Foundation

class DataTaskManager {
    
    static let session = URLSession(configuration: .default)
    
    enum url: String {
        case main = "https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/main"
        case soup = "https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/soup"
        case side = "https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/side"
    }
    
    static func get(url: url ,completion: @escaping (Result<GetMenu, Error>) -> Void) {
        guard let url = URL(string: url.rawValue) else {
            print("The URL is inappropriate.")
            return
        }
        session.dataTask(with: url){ data, response, error in
            if let data = data {
                guard let menuList = ParsingManager.decodeData(type: GetMenu.self, data: data) else { return }
                completion(.success(menuList))
            } else {
                guard let error = error?.localizedDescription as? Error else { return }
                completion(.failure(error))
            }
        }.resume()
    }
  
}
