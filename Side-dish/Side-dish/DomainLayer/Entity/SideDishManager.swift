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
    
    private var sideDishesInfo : [Path : [Item]] = [:]
    
    func insert(path : Path, items : [Item]) {
        sideDishesInfo[path] = items
        NotificationCenter.default.post(name: NotificationName.updatePath,
                                        object: self,
                                        userInfo: ["path": path])
    }
    
    func getSideDishes(with path: Path) -> [Item] {
        return sideDishesInfo[path] ?? []
    }
 
    func getRowCount(path : Path) -> Int {
        return sideDishesInfo[path]?.count ?? 0
    }
}
