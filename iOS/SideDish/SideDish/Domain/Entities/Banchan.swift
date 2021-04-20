//
//  Banchan.swift
//  SideDish
//
//  Created by 심영민 on 2021/04/20.
//

import Foundation

enum Delivery {
    static let dawn = "새벽배송"
    static let nationWide = "전국택배"
}

enum PriceType {
    static let launching = "런칭특가"
    static let event = "이벤트특가"
}

struct Banchan {
    private var detail_hash: String
    private var image: URL
    private var alt: String
    private var delivery_type: [Delivery]
    private var title: String
    private var description: String
    private var n_price: String
    private var s_price: String
    private var badge: [PriceType]
}
