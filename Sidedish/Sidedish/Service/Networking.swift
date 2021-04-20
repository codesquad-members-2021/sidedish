//
//  Networking.swift
//  Sidedish
//
//  Created by Issac on 2021/04/20.
//

import Foundation
import Alamofire


class Networking {
    func requestMainCagegiry(url: String, completion: @escaping (Result<Any, AFError>) -> ()) {
        AF.request(url, method: .get,
                   encoding: JSONEncoding.default,
                   headers:  ["Content-Type":"application/json;charset=utf-8"] )
            .validate()
            .responseJSON(completionHandler: { (response) in
                completion(response.result)
            })        
    }
}
