//
//  DishDetailResponseDTO.swift
//  BanchanCode
//
//  Created by Song on 2021/04/28.
//

import Foundation

struct DishDetailResponseDTO: Decodable {
    private enum CodingKeys: String, CodingKey {
        case id
        case name
        case description
        case prices
        case badges
        case stock
        case point
        case deliveryInfo = "delivery_info"
        case thumbImages = "thumb_images"
        case detailImages = "detail_images"
    }
    let id: Int
    let name: String
    let description: String
    let prices: [Int]
    let badges: [String]
    let stock: Int
    let point: Int
    let deliveryInfo: String
    let thumbImages: [String]
    let detailImages: [String]
}

extension DishDetailResponseDTO {
    func toDomain() -> DishDetail {
        return .init(basicInformation: BasicInformation(
            id: id,
            name: name,
            description: description,
            prices: prices,
            badges: badges,
            stock: stock,
            point: point,
            deliveryInfo: deliveryInfo
        ),
        thumbImages: thumbImages,
        detailImages: detailImages)
    }
}
