//
//  SideDishes.swift
//  sidedish
//
//  Created by Song on 2021/04/20.
//

import Foundation

class SideDishes: Codable {
    
    private(set) var category: String
    private var list: [SideDish]
    
    init(category: String, list: [SideDish]) {
        self.category = category
        self.list = list
    }
    
    //프로토콜로 분리
    func count() -> Int {
        return list.count
    }
    
    func sideDish(at index: Int) -> SideDish? {
        guard count() > index else { return nil }
        return list[index]
    }
    
}
