//
//  Card.swift
//  SideDish
//
//  Created by 박혜원 on 2021/04/20.
//

import Foundation

class Card : Hashable{
    let id : String
    
    let title : String
    let detail : String
    let discountPrice : String?
    let originalPrice : String?
    let imageURL : URL?
    let badge : [String]?
   
    init(id : String, title : String, detail: String, d_price : String?, o_price : String?, url : URL?, badge : [String]?){
        self.id = id
        self.title = title
        self.detail = detail
        self.discountPrice = d_price
        self.originalPrice = o_price
        self.imageURL = url
        self.badge = badge
    }
    static func == (lhs: Card, rhs: Card) -> Bool {
        return lhs.id == rhs.id
    }
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
