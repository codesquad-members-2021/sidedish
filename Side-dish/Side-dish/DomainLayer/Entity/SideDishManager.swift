//
//  SideDishManager.swift
//  Side-dish
//
//  Created by HOONHA CHOI on 2021/04/21.
//

import Foundation
import Combine

class SideDishManager {
    
    enum NotificationName {
        static let updateMenu = Notification.Name("updateMenu")
    }
    
    private var sideDishesInfo : [Menu : [Item]] = [:]
    private(set) var arriveMenuType = PassthroughSubject<Menu, Never>()
    func insert(path: Menu, items: [Item]) {
        sideDishesInfo[path] = items
        arriveMenuType.send(path)
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
