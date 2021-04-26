//
//  VariousMenu.swift
//  SideDish
//
//  Created by sonjuhyeong on 2021/04/20.
//

import Foundation

class Menus {
    
    private var mainMenus: [Menu]
    private var soupMenus: [Menu]
    private var sideMenus: [Menu]
    
    init() {
        self.mainMenus = []
        self.soupMenus = []
        self.sideMenus = []
    }
    
    func add(menuList: [Menu], section: MainDiffableDataSource.sectionTitle) {
        switch section {
        case .main:
            self.mainMenus = menuList
        case .soup:
            self.soupMenus = menuList
        case .side:
            self.sideMenus = menuList
        }
    }
    
    func giveMenu(section: MainDiffableDataSource.sectionTitle) -> [Menu] {
        switch section {
        case .main:
            return mainMenus
        case .soup:
            return soupMenus
        case .side:
            return sideMenus
        }
    }
}

