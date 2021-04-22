//
//  NetworkService.swift
//  SideDish
//
//  Created by 지북 on 2021/04/21.
//

import Foundation
import Alamofire

protocol NetworkRequest {
    func request(url strUrl: String, httpMethod: HTTPMethod, completion: @escaping (AFDataResponse<Data>) -> Void)
}

class NetworkSerivce: NetworkRequest {
    
    func request(url strUrl: String, httpMethod: HTTPMethod, completion: @escaping (AFDataResponse<Data>) -> Void) {
        guard let url = URL(string: strUrl) else { return }
        
        AF.request(url, method: httpMethod).validate().responseData { data in
            completion(data)
        }
    }
}
