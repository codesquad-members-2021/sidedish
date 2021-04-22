//
//  DishesResponseDTO.swift
//  BanchanCode
//
//  Created by Song on 2021/04/22.
//

import Foundation

struct DishesResponseDTO: Decodable {
    private enum CodingKeys: String, CodingKey {
        case title
        case dishes
    }
    let title: String
    let dishes: [DishDTO]
}

struct DishDTO: Decodable {
    private enum CodingKeys: String, CodingKey {
        case id
        case name
        case description
        case topImage = "top_image"
        case prices
        case badges
    }
    let id: Int
    let name: String
    let description: String
    let topImage: String
    let prices: [Int]
    let badges: [String]
}
