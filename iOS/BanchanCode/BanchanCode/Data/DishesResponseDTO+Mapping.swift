//
//  DishesResponseDTO+Mapping.swift
//  BanchanCode
//
//  Created by Song on 2021/04/22.
//

import Foundation

struct DishesResponseDTO: Decodable {
    private enum CodingKeys: String, CodingKey {
        case category = "title"
        case dishes
    }
    enum categoryDTO: String, Decodable {
        case main
        case soup
        case side
    }
    let category: categoryDTO
    let dishes: [DishDTO]
}

extension DishesResponseDTO {
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
}

extension DishesResponseDTO {
    func toDomain() -> DishList {
        return .init(category: category.toDomain(),
                     dishes: dishes.map { $0.toDomain() })
    }
}

extension DishesResponseDTO.categoryDTO {
    func toDomain() -> DishList.Category {
        switch self {
        case .main:
            return .main
        case .soup:
            return .soup
        case .side:
            return .side
        }
    }
}

extension DishesResponseDTO.DishDTO {
    func toDomain() -> Dish {
        return .init(id: id,
                     name: name,
                     description: description,
                     imageURL: topImage,
                     prices: prices,
                     badges: badges)
    }
}
