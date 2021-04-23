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
    enum Category {
        case main
        case soup
        case side
        
        func getSectionTitle() -> String {
            switch self {
            case .main:
                return "모두가 좋아하는 든든한 메인요리"
            case .soup:
                return "정성이 담긴 뜨끈뜨끈 국물요리"
            case .side:
                return "식탁을 풍성하게 하는 정갈한 밑반찬"
            }
        }
    }
    var category: Category
    var dishes: [Dish]
}
