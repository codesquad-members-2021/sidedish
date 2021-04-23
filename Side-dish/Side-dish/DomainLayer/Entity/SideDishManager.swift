//
//  SideDishManager.swift
//  Side-dish
//
//  Created by HOONHA CHOI on 2021/04/21.
//

import Foundation

class SideDishManager {
    
    enum NotificationName {
        static let updatePath = Notification.Name("updatePath")
    }
    
    private var sideDishesInfo : [Menu : [Item]] = [:]
    
    func insert(path: Menu, items: [Item]) {
        sideDishesInfo[path] = items
        NotificationCenter.default.post(name: NotificationName.updatePath,
                                        object: self,
                                        userInfo: ["path": path])
    }
    
    func getSideDishes(with path: Menu) -> [Item] {
        return sideDishesInfo[path] ?? []
    }
 
    func getRowCount(path : Menu) -> Int {
        return sideDishesInfo[path]?.count ?? 0
    }
    
    func getItemDetailHash(with path: Menu, sequence: Int) -> Item? {
        return sideDishesInfo[path]?[sequence]
    }
}
