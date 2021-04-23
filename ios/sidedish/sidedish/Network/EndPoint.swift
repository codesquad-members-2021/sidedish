//
//  EndPoint.swift
//  sidedish
//
//  Created by Song on 2021/04/22.
//

import Foundation

enum EndPoint: String {
    case best = "/develop/baminchan/best"
    case categories = "/categories"
    case main = "/main"
    case side = "/side"
    case soup = "/soup"
    
    var path: String {
        return rawValue
    }
}
