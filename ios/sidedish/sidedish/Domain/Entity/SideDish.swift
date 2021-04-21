//
//  SideDish.swift
//  sidedish
//
//  Created by Song on 2021/04/20.
//

import Foundation

class SideDish: Codable {
    
    var detail_hash : String
    var image: String //library/cache의 파일명
    var title: String //"[소중한식사] 골뱅이무침 195g"
    var description: String //"매콤새콤달콤, 반찬으로도 안주로도 좋은"
    var deliveryTypes: [String] //["새벽배송","전국택배"]
    var price: Int //7,000
    var salePrice: Int //6,300
    var badges: [String] //["이벤트특가", "런칭특가"]
    
    var detail: Detail?
    
    func updateDetail(_ detail: Detail) {
        self.detail = detail
    }
}

class Detail: Codable {
    var thumbImages: [String] //library/cache의 파일명들
    var point: String //"63원"
    var deliveryInfo: String //"서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [화 수 목 금 토] 수령 가능한 상품입니다"
    var deliveryFee: String //"2,500원 (40,000원 이상 구매 시 무료)"
    var detailImages: [String]
}

//struct Detail: Codable {
//    var hash = "HF778" //겹침
//    var topImage = "" //겹침?
//    var thumbImages = ["","",""]
//    var productDescription = "매콤새콤달콤, 반찬으로도 안주로도 좋은" //겹침
//    var point = "63원"
//    var deliveryInfo = "서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [화 수 목 금 토] 수령 가능한 상품입니다"
//    var deliveryFee = "2,500원 (40,000원 이상 구매 시 무료)"
//    var prices = ["7,000원", "6,300원"] //겹침
//    var detailSection = ["","","",""]
//}
