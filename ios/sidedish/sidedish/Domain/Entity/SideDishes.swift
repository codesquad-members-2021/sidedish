//
//  SideDishes.swift
//  sidedish
//
//  Created by Song on 2021/04/20.
//

import Foundation

class SideDishes: Decodable {
    
    private let categoryId : String
    private(set) var name : String
    private(set) var items : [SideDish]
    
    enum CodingKeys: String, CodingKey {
        case categoryId = "category_id"
        case name
        case items
    }
}

extension SideDishes: SideDishFindable {
    
    func count() -> Int {
        return items.count
    }
    
    func sideDish(at index: Int) -> SideDish? {
        guard count() > index else { return nil }
        return items[index]
    }
}
