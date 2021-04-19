//
//  Item.swift
//  sidedishApp
//
//  Created by zombietux on 2021/04/19.
//

import Foundation

struct Items: Codable {
    private var items: [Item]
}

struct Item: Codable {
    private let id: Int
    private let thumbnailImage: String
    private let name: String
    private let description: String
    private let normalPrice: Int
    private let salePrice: Int
    private let eventBadgeList: [EventBadge]
}

struct EventBadge: Codable {
    private let name: String
    private let colorHex: String
}
