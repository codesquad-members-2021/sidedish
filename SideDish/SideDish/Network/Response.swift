//
//  Response.swift
//  SideDish
//
//  Created by 박혜원 on 2021/04/20.
//

import Foundation

struct CardResponse : Codable {
    let id : String
    let image : String
    let alt : String
    let delivery : [String]?
    let title : String
    let description : String
    let originalPrice : String?
    let discountPrice : String?
    let badge : [String]?
    
    enum CodingKeys : String, CodingKey {
        case id = "detail_hash"
        case image
        case alt
        case delivery = "delivery_type"
        case title
        case description
        case originalPrice = "n_price"
        case discountPrice = "s_price"
        case badge
     }
}

struct CardsResponse : Codable {
    let statusCode : Int
    let body : [CardResponse]
}
