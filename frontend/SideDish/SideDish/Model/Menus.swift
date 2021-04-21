//
//  VariousMenu.swift
//  SideDish
//
//  Created by sonjuhyeong on 2021/04/20.
//

import Foundation

class Menus {
    
    private var menus: [Menu]!
    
    init() {
        self.menus = nil
    }
    
    func add(menuList: [Menu]) {
        self.menus = menuList
    }
    
    func giveMenu() -> [Menu] {
        return self.menus
    }
}

