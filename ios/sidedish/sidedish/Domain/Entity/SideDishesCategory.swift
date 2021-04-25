//
//  SideDishesCategory.swift
//  sidedish
//
//  Created by 박정하 on 2021/04/23.
//

import Foundation

protocol SideDishesCategoryManageable{
    func getName() -> String
}


class SideDishesCategory : Decodable, SideDishesCategoryManageable {
    func getName() -> String {
        self.categoryName
    }
    
    let id: Int
    let categoryName: String
    let endPoint: String
}
