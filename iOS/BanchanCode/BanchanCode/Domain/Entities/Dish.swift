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

struct DishSet {
    var dishes: [Dish]
}
