//
//  Endpoint.swift
//  sidedishApp
//
//  Created by zombietux on 2021/04/20.
//

import Foundation
import Combine

enum Section: Int, CaseIterable {
    case main
    case soup
    case side

    var sectionHeader: String {
        switch self {
        case .main: return "모두가 좋아하는 든든한 메인요리"
        case .soup: return "정성이 담긴 뜨끈뜨끈 국물요리"
        case .side: return "식탁을 풍성하게 하는 정갈한 밑반찬"
        }
    }
}

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
