//
//  VariousMenu.swift
//  SideDish
//
//  Created by sonjuhyeong on 2021/04/20.
//

import Foundation

class Menus {
    
    private var menus: [Menu]
    
    init(menus: [Menu]) {
        self.menus = menus
    }
    
    func addMenu(menu: Menu) {
        menus.append(menu)
    }
}

