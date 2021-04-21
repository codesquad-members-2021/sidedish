//
//  Dish.swift
//  BanchanCode
//
//  Created by Song on 2021/04/21.
//

import Foundation

class Dish: Codable {
    let hash: String
    let name: String
    let description: String
    let top_image: String
    let prices: [Int]
    let badges: [String]
    let stock: Int?
    let point: Int?
    let delivery_info: String?
    let thumb_images: [String]?
    let detail_images: [String]?
}
