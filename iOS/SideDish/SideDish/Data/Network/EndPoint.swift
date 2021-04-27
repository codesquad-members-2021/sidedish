//
//  EndPoint.swift
//  SideDish
//
//  Created by 심영민 on 2021/04/27.
//

import Foundation

public protocol Requestable {
    var baseURL: String { get }
    var path: String { get }
    var httpMethod: HttpMethod { get }
    func url() -> URL?
}

public struct BanchanAPIEndpoint: Requestable {
    
    public let baseURL = "http://ec2-54-180-115-20.ap-northeast-2.compute.amazonaws.com:8080/"
    public let path: String
    public let httpMethod: HttpMethod
    
    init(path: String, httpMethod: HttpMethod) {
        self.path = path
        self.httpMethod = httpMethod
    }
    
    public func url() -> URL? {
        return URL(string: baseURL + path)
    }
}

public enum Section: Int, CaseIterable {
    case main = 0
    case soup, side
    
    func path() -> String {
        switch self {
        case .main:
            return "main"
        case .soup:
            return "soup"
        case .side:
            return "side"
        }
    }
    
    func description() -> String {
        switch self {
        case .main:
            return "모두가 좋아하는 든든한 메인요리"
        case .soup:
            return  "정성이 담긴 뜨끈뜨끈 국물요리"
        case .side:
            return "식탁을 풍성하게 하는 정갈한 밑반찬"
        }
    }
}
