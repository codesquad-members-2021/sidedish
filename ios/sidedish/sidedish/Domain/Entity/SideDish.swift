//
//  SideDish.swift
//  sidedish
//
//  Created by Song on 2021/04/20.
//

import Foundation

struct SideDish: Decodable {
    let detail_hash : String
    let image : String //library/cache의 파일명
    let alt : String
    let title: String //"[소중한식사] 골뱅이무침 195g"
    let description: String //"매콤새콤달콤, 반찬으로도 안주로도 좋은"
    let n_price: String? //7,000
    let s_price: String? //6,300
    let delivery_type : [String]? //["새벽배송","전국택배"]
    let badge : [String]? //["이벤트특가", "런칭특가"]
}

class Detail: Codable {
    let thumbImages: [String] //library/cache의 파일명들
    let point: String //"63원"
    let deliveryInfo: String //"서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [화 수 목 금 토] 수령 가능한 상품입니다"
    let deliveryFee: String //"2,500원 (40,000원 이상 구매 시 무료)"
    let detailImages: [String]
}
