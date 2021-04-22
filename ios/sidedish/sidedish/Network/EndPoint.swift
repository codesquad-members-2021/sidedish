//
//  EndPoint.swift
//  sidedish
//
//  Created by Song on 2021/04/22.
//

import Foundation

enum EndPoint: String {
    case best = "/develop/baminchan/best"
    
    var path: String {
        return rawValue
    }
}

