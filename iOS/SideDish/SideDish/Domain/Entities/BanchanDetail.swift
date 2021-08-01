//
//  DetailBanchan.swift
//  SideDish
//
//  Created by 심영민 on 2021/04/20.
//

import Foundation

struct BanchanDetail {
    private (set) var topImage: String
    private (set) var thumbImages: [String]
    private (set) var detailSection: [String]
    private (set) var productDescription: String
    private (set) var title: String
    private (set) var deliveryInfo: String
    private (set) var deliveryFee: String
    private (set) var point: String
    private (set) var nPrice: String?
    private (set) var sPrice: String
    private (set) var badges: [String]
    private (set) var inStock: Bool
}
