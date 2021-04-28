//
//  Network.swift
//  SideDish
//
//  Created by sonjuhyeong on 2021/04/21.
//

import Foundation
import Alamofire

class DataTaskManager {
    
    static let session = URLSession(configuration: .default)
    
    enum Url: String {
        case main = "https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/main"
        case soup = "https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/soup"
        case side = "https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/side"
        case detail = "https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/detail"
    }
    
    static func sendRequest(url: Url, completion: @escaping (Result<MenuResponse, Error>) -> Void) {
        guard let url = URL(string: url.rawValue) else {
            print("The URL is inappropriate.")
            return
        }
        session.dataTask(with: url) { data, response, error in
            if let data = data {
                guard let menuList = ParsingManager.decodeData(type: MenuResponse.self, data: data) else { return }
                completion(.success(menuList))
            } else {
                guard let error = error?.localizedDescription as? Error else { return }
                completion(.failure(error))
            }
        }.resume()
    }
  
    static func sendDetailRequest(detailHash: String, completion: @escaping (Result<DetailMenuResponse, Error>) -> Void) {
        guard let url = URL(string: "\(Url.detail.rawValue)/\(detailHash)") else {
            print("The URL is inappropriate.")
            return
        }
        session.dataTask(with: url) { data, response, error in
            if let data = data {
                guard let detailMenuList = ParsingManager.decodeData(type: DetailMenuResponse.self, data: data) else { return }
                completion(.success(detailMenuList))
            } else {
                guard let error = error?.localizedDescription as? Error else { return }
                completion(.failure(error))
            }
        }.resume()
    }
}
