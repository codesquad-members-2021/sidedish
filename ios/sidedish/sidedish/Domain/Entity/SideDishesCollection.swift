//
//  SideDishesCollection.swift
//  sidedish
//
//  Created by Song on 2021/04/20.
//

import Foundation

class SideDishesCollection: Codable {
    
    private var recentUpdate: Date?
    private var list: [SideDishes]
    
    init(recentUpdate: Date, list: [SideDishes]) {
        self.recentUpdate = recentUpdate
        self.list = list
    }
    
    func update(list: [SideDishes]) {
        self.list = list
        recentUpdate = Date()
    }
}
