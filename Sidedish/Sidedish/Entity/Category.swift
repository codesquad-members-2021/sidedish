//
//  Category.swift
//  Sidedish
//
//  Created by Issac on 2021/04/19.
//

import Foundation

struct Category: Codable {
    var categoryId: String
    var name: String
    var item: [SidedishItem]
    
    enum Category: String, CodingKey {
        case categoryId = "category_id"
        case name
        case item
    }
}
