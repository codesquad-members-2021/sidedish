//
//  Category.swift
//  Sidedish
//
//  Created by Issac on 2021/04/26.
//

import Foundation

enum Category: Int, CustomStringConvertible, CaseIterable {
    case main = 0
    case soup = 1
    case side = 2
    
    var description: String {
        switch self {
        case .main: return "main"
        case .soup: return "soup"
        case .side: return "side"
        }
    }
    
    var index: Int {
        switch self {
        case .main: return 0
        case .soup: return 1
        case .side: return 2
        }
    }
}
