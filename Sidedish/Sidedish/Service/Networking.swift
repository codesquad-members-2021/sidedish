//
//  Networking.swift
//  Sidedish
//
//  Created by Issac on 2021/04/20.
//

import Foundation
import Alamofire


class Networking {
    func requestCategory<T: Decodable>(url: String, completion: @escaping (Result<T, AFError>) -> ()) {
        AF.request(url).validate().responseDecodable(of: T.self) { (response) in
            switch response.result {
            case .success(_):
                completion(response.result)
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
    func downloadImage(from url: URL, completion: @escaping ((Data) -> ()) ) {
        URLSession.shared.dataTask(with: url) { (data, _, error) in
            if let error = error {
                #if DEBUG
                NSLog(error.localizedDescription)
                #endif
                return
            }
            guard let imageData = data else {
                return
            }
            completion(imageData)
        }.resume()
    }
    
}
