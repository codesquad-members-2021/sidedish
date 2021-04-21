//
//  Request.swift
//  SideDish
//
//  Created by sonjuhyeong on 2021/04/21.
//

import Foundation

class RequestManager {
    
    static let urlString = "https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/main"
    //GET
    static func getRequest() -> URLRequest {
        guard let url = URL(string: urlString) else {
            print("The URL is inappropriate.")
            return URLRequest(url: URL(string: "")!)
        }
        return URLRequest(url: url)
    }
    
    
}
