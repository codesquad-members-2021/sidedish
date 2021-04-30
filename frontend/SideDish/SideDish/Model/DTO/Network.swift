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
        case main = "http://13.209.36.131:8080/17011000"
        case soup = "http://13.209.36.131:8080/17011100"
        case side = "http://13.209.36.131:8080/17011200"
        case detail = "http://13.209.36.131:8080/detail"
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
  
    static func sendDetailRequest(categoryId: Int, detailHash: String, completion: @escaping (Result<DetailMenu, Error>) -> Void) {
        guard let url = URL(string: "\(Url.detail.rawValue)/\(categoryId)/\(detailHash)") else {
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
    
    static func orderPost(orderCount: OrderMenuRequest, categoryId: Int, detailHash: String, completion: @escaping (Bool) -> Void) {
        guard let url = URL(string: "\(Url.detail.rawValue)/\(categoryId)/\(detailHash)") else {
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
