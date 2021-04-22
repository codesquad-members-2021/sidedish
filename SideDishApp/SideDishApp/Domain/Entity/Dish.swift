//
//  SideDish.swift
//  SideDishApp
//
//  Created by 오킹 on 2021/04/21.
//

import Foundation

// MARK: - Dishes
struct Dishes: Codable {
    private let category: String
    private(set) var name: String
    private(set) var dishes: [Dish]
}

// MARK: - Dish
struct Dish: Codable {
    private let dishId: String
    private(set) var image: String
    private let alt: String
    private(set) var deliveryType: String
    private(set) var title: String
    private(set) var description: String
    private(set) var normalPrice: String
    private(set) var sellingPrice: String?
    private(set) var badge: String?
}
