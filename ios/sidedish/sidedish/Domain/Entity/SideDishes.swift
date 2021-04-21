//
//  SideDishes.swift
//  sidedish
//
//  Created by Song on 2021/04/20.
//

import Foundation

class SideDishes: Codable {
    
    private(set) var category: Category
    
    enum Category: Int, Codable {
        case main = 1
        case soup = 2
        case side = 3
    }
    
    private var list: [SideDish]
    
    init(category: Category, list: [SideDish]) {
        self.category = category
        self.list = list
    }
    
}

extension SideDishes: SideDishFindable {
    
    func count() -> Int {
        return list.count
    }
    
    func sideDish(at index: Int) -> SideDish? {
        guard count() > index else { return nil }
        return list[index]
    }
    
}
