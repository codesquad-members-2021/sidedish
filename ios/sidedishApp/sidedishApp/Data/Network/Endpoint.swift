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
        components.scheme = "https"
        components.host = "45a2d464-7981-45cc-8b6d-4667ad9bf6f5.mock.pstmn.io"
        components.path = "\(path)"
        
        let url = components.url
        assert(url != nil, "url is nil")

        return url!
    }
    
    static func get(path: String) -> Self {
        return Endpoint(path: "/\(path)")
    }
}
