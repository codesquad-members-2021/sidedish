//
//  Categorizable.swift
//  BanchanCode
//
//  Created by Song on 2021/04/26.
//

import Foundation

protocol Categorizable {
    var sectionIndex: Int { get }
    var name: String { get }
    var sectionTitle: String { get }
    var items: [Dish] { get set }
}

struct MainCategory: Categorizable {
    var sectionIndex: Int
    var name: String = "main"
    var sectionTitle: String = "모두가 좋아하는 든든한 메인요리"
    var items: [Dish] = []
}

struct SoupCategory: Categorizable {
    var sectionIndex: Int
    var name: String = "soup"
    var sectionTitle: String = "정성이 담긴 뜨끈뜨끈 국물요리"
    var items: [Dish] = []
}

struct SideCategory: Categorizable {
    var sectionIndex: Int
    var name: String = "side"
    var sectionTitle: String = "식탁을 풍성하게 하는 정갈한 밑반찬"
    var items: [Dish] = []
}
