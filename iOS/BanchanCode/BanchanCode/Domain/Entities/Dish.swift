//
//  Dish.swift
//  BanchanCode
//
//  Created by Song on 2021/04/21.
//

import Foundation

struct Dish {
    let id: Int
    let name: String
    let description: String
    let imageURL: String
    let prices: [Int]
    let badges: [String]
}

struct DishList {
    var dishes: [Dish]
}

protocol Categorizable {
    var name: String { get }
    var sectionTitle: String { get }
}

struct MainCategory: Categorizable {
    var name: String = "main"
    var sectionTitle: String = "모두가 좋아하는 든든한 메인요리"
}

struct SoupCategory: Categorizable {
    var name: String = "soup"
    var sectionTitle: String = "정성이 담긴 뜨끈뜨끈 국물요리"
}

struct SideCategory: Categorizable {
    var name: String = "side"
    var sectionTitle: String = "식탁을 풍성하게 하는 정갈한 밑반찬"
}
