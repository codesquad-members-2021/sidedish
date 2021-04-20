//
//  SideDishes.swift
//  sidedish
//
//  Created by Song on 2021/04/20.
//

import Foundation

class SideDishes: Codable {
    
    private(set) var category: Category
    
    enum Category: String, Codable {
        case main = "한그릇 뚝딱 메인 요리"
        case soup = "김이 모락모락 국.찌개"
        case side = "언제 먹어도 든든한 밑반찬"
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
