//
//  SideDishesCollection.swift
//  sidedish
//
//  Created by Song on 2021/04/20.
//

import Foundation

struct SideDishesCollection: Decodable, SideDishesManageable {
    
    func getsidedish(section: Int) -> SideDishes {
        return self.body[section]
    }
    
    func getCountdishesSection() -> Int {
        return self.body.count
    }
    
    func getCountdishes(section: Int) -> Int {
        return self.body[section].items.count
    }
    
    
    private(set) var body: [SideDishes]
    
}
