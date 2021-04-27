//
//  SideDishesCategory.swift
//  sidedish
//
//  Created by 박정하 on 2021/04/23.
//

import Foundation

protocol SideDishesCategoryManageable{
    func getName() -> String
    func getEndpoint() -> String
}


class SideDishesCategory : Decodable, SideDishesCategoryManageable {
    func getName() -> String {
        return self.categoryName
    }
    func getEndpoint() -> String {
        return self.endPoint
    }
    
    let id: Int16
    let categoryName: String
    let endPoint: String
}
