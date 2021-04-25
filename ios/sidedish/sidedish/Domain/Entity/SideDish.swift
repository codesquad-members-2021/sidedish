//
//  SideDish.swift
//  sidedish
//
//  Created by Song on 2021/04/20.
//

import Foundation

protocol SideDishManageable {
    func getTitle() -> String
    func getimage() -> String
    func getdescription() -> String
    func getPrice() -> Int
    func getSalePrice() -> Int
    func getDeliveryTypes() -> [String]?
    func getbadge() -> [String]?
}


struct SideDish: Decodable, SideDishManageable {
    func getTitle() -> String {
        return self.title
    }
    
    func getimage() -> String {
        return self.image
    }
    
    func getdescription() -> String {
        return self.description
    }
    
    func getPrice() -> Int {
        return self.price
    }
    
    func getSalePrice() -> Int {
        return self.salePrice
    }
    
    func getDeliveryTypes() -> [String]? {
        return self.deliveryTypes
    }
    
    func getbadge() -> [String]? {
        return self.badges
    }
    
    let id: String
    let image: String //library/cache의 파일명
    let title: String //"[소중한식사] 골뱅이무침 195g"
    let description: String //"매콤새콤달콤, 반찬으로도 안주로도 좋은"
    let price: Int //7,000
    let salePrice: Int //6,300
    let deliveryTypes: [String]? //["새벽배송","전국택배"]
    let badges: [String]? //["이벤트특가", "런칭특가"]
    
    enum CodingKeys: String, CodingKey {
        case id = "detailHash"
        case image
        case title
        case description
        case price
        case salePrice
        case deliveryTypes
        case badges
    }
}

class Detail: Decodable {
    let thumbImages: [String] //library/cache의 파일명들
    let point: String //"63원"
    let deliveryInfo: String //"서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [화 수 목 금 토] 수령 가능한 상품입니다"
    let deliveryFee: String //"2,500원 (40,000원 이상 구매 시 무료)"
    let detailImages: [String]
}
