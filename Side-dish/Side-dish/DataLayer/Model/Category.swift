//
//  Category.swift
//  Side-dish
//
//  Created by 조중윤 on 2021/04/19.
//

import Foundation

struct Category: Codable {
    let categoryID, name: String
    let items: [Item]
    
    enum CodingKeys: String, CodingKey {
        case categoryID = "category_id"
        case name, items
    }
}
