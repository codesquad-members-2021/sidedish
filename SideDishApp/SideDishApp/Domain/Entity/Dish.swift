//
//  SideDish.swift
//  SideDishApp
//
//  Created by 오킹 on 2021/04/21.
//

import Foundation

// MARK: - Dishes
struct Dishes: Codable {
    let category: String
    let name: String
    let dishes: [Dish]
}

// MARK: - Dish
struct Dish: Codable {
    let dishId: String
    let image: String
    let alt: String
    let deliveryType: String
    let title: String
    let description: String
    let normalPrice: String
    let sellingPrice: String?
    let badge: String?
    
//
//    enum CodingKeys: String, CodingKey {
//        case dishID = "dishId"
//        case image, alt, deliveryType, title
//        case dishDescription = "description"
//        case normalPrice, sellingPrice, badge
//    }
}
