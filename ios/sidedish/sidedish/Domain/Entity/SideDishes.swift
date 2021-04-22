//
//  SideDishes.swift
//  sidedish
//
//  Created by Song on 2021/04/20.
//

import Foundation

class SideDishes: Codable {
    
    private var category_id : String
    private(set) var name : String
    private(set) var items : [SideDish]
    
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
