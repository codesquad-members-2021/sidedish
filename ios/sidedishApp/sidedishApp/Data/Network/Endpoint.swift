//
//  Endpoint.swift
//  sidedishApp
//
//  Created by zombietux on 2021/04/20.
//

import Foundation
import Combine

struct Endpoint {
    private var path: String
    
    var url: URL {
        var components = URLComponents()
        components.scheme = "http"
        components.host = "3.34.213.95"
        components.port = 8080
        components.path = "\(path)"
        let url = components.url
        assert(url != nil, "url is nil")

        return url!
    }
    
    static func getCategory(path: String) -> Self {
        return Endpoint(path: "/\(path)")
    }

    static func getDetail(path category: String, path id: Int) -> Self {
        return Endpoint(path: "/\(category)/\(id)")
    }
}
