//
//  RequestType.swift
//  sidedish
//
//  Created by Song on 2021/04/21.
//

import Foundation

enum RequestType: String {
    case get = "GET"
    case post = "POST"
    case put = "PUT"
    case delete = "DELETE"
    
    var value: String {
        return rawValue
    }
}
