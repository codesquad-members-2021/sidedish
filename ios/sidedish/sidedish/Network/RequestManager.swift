//
//  RequestManager.swift
//  sidedish
//
//  Created by Song on 2021/04/21.
//

import Foundation

class RequestManager {

    private let baseAddress: String
    
    init(baseAddress: String) {
        self.baseAddress = baseAddress
    }
    
    func create(endPoint: String, body: Data?, requestType: RequestType) -> URLRequest {
        guard let url = URL(string: self.baseAddress + endPoint) else {
            return URLRequest(url: URL(string: baseAddress)!)
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = requestType.value
        
        if let body = body {
            request.httpBody = body
        }
        
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        return request
    }
}
