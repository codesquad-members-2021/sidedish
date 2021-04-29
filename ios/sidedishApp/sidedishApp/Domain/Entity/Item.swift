//
//  Item.swift
//  sidedishApp
//
//  Created by zombietux on 2021/04/19.
//

import Foundation

struct Item: Codable, Equatable, Hashable {
    private let id: Int
    private let thumbnailImage: String
    private let name: String
    private let description: String
    private let normalPrice: Int
    private let salePrice: Int
    private let eventBadgeList: [EventBadge]
    
    func getName() -> String {
        return self.name
    }
    
    func getDescription() -> String {
        return self.description
    }
    
    func getThumbnailImage() -> String {
        return self.thumbnailImage
    }
    
    func getNormalPrice() -> Int {
        return self.normalPrice
    }
    
    func getSalePrice() -> Int {
        return self.salePrice
    }
    
    func getEventBadgeName(_ index: Int) -> String {
        return self.eventBadgeList[index].getName()
    }
    
    func getEventBadgeColor(_ index: Int) -> String {
        return self.eventBadgeList[index].getColorHex()
    }
    
    func isNotSale() -> Bool {
        return self.salePrice == -1 ? true : false
    }
}

struct EventBadge: Codable, Equatable, Hashable {
    private let name: String
    private let colorHex: String
    
    init(name: String, colorHex: String) {
        self.name = name
        self.colorHex = colorHex
    }
    
    func getName() -> String {
        return self.name
    }
    
    func getColorHex() -> String {
        return self.colorHex
    }
}
