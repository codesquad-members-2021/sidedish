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
    let discountPrice : Int
    let originalPrice : Int
    let imageURL : URL
   
    init(id : String, title : String, detail: String, d_price : Int, o_price : Int, url : URL){
        
        self.id = id
        self.title = title
        self.detail = detail
        self.discountPrice = d_price
        self.originalPrice = o_price
        self.imageURL = url
    }
    static func == (lhs: Card, rhs: Card) -> Bool {
        return lhs.id == rhs.id
    }
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
