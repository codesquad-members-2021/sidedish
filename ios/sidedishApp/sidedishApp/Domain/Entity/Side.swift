//
//  Side.swift
//  sidedishApp
//
//  Created by zombietux on 2021/04/19.
//

import Foundation

struct Side: Codable, Equatable, Hashable {
    private var items: [Item]
    
    init(items: [Item]) {
        self.items = items
    }
    
    func getItems() -> [Item] {
        return self.items
    }
}
