//
//  Network.swift
//  SideDish
//
//  Created by sonjuhyeong on 2021/04/21.
//

import Foundation
import Alamofire

class APIRequestManager {
    
    static let session = URLSession(configuration: .default)
    
    static func sendRequest(url: URL?, completion: @escaping (Result<MenuResponse, Error>) -> Void) {
        guard let url = url else {
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
  
    static func sendDetailRequest(url: URL?, completion: @escaping (Result<DetailMenu, Error>) -> Void) {
        guard let url = url else {
            print("The URL is inappropriate.")
            return
        }
        session.dataTask(with: url) { data, response, error in
            if let data = data {
                guard let detailMenuList = ParsingManager.decodeData(type: DetailMenu.self, data: data) else { return }
                completion(.success(detailMenuList))
            } else {
                guard let error = error?.localizedDescription as? Error else { return }
                completion(.failure(error))
            }
        }.resume()
    }
    
    static func orderPost(orderCount: OrderMenuRequest, url: URL?, completion: @escaping (Bool) -> Void) {
        guard let url = url else {
            print("The URL is inappropriate.")
            return
        }
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        guard let encodingData = ParsingManager.encodeData(data: orderCount) else { return }
        request.httpBody = encodingData
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")

        session.dataTask(with: request){ (_, response, _) in
            guard let response = response as? HTTPURLResponse else { return }
            if (200 ..< 299) ~= response.statusCode {
                completion(true)
            }else{
                completion(false)
            }
        }.resume()
    }
    
}
