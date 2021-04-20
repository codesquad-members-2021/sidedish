//
//  DetailBanchan.swift
//  SideDish
//
//  Created by 심영민 on 2021/04/20.
//

import Foundation

struct DetailBanchan {
    private var topImage: URL
    private var thumbImages: [URL]
    private var detailImage: [URL]
    private var description: String
    private var title: String
    private var deliveryInfo: String
    private var deliveryFee: String
    private var point: Int
    private var netPrice: Int
    private var salePrice: Int?
    private var badge: [PriceType]
}
