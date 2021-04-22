//
//  EndPoint.swift
//  SideDish
//
//  Created by 박혜원 on 2021/04/22.
//

import Foundation

enum EndPoint : String, CodingKey {
    case main
    case soup
    case side
    
    static let baseURL = "https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/"
    var path : String { self.stringValue }
    var url : URL { URL(string: EndPoint.baseURL + path)! }
}
