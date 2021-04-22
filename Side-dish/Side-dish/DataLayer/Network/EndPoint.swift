//
//  EndPoint.swift
//  Side-dish
//
//  Created by HOONHA CHOI on 2021/04/19.
//

import Foundation

enum Endpoint {
    private static let scheme = "https"
    private static let host = "h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com"
    private static let basicPath = "/develop/baminchan/"
    private static let detailPath = "detail/"
    
    static func url(path : Menu) -> URL? {
        var components = URLComponents()
        components.scheme = Endpoint.scheme
        components.host = Endpoint.host
        components.path = basicPath + "\(path)"
        return components.url
    }
    
    static func url(detailHash: String) -> URL? {
        var components = URLComponents()
        components.scheme = Endpoint.scheme
        components.host = Endpoint.host
        components.path = basicPath + detailPath + "\(detailHash)"
        return components.url
    }
    
}

enum Menu: CaseIterable {
    case main
    case soup
    case side
    
    var title : String {
        switch self {
        case .main:
            return "한그릇 뚝딱 메인요리"
        case .soup:
            return "김이 모락모락 국,찌깨"
        case .side:
            return "언제 먹어도 든든한 밑반찬"
        }
    }
}
