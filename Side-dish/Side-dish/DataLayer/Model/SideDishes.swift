//
//  Category.swift
//  Side-dish
//
//  Created by 조중윤 on 2021/04/19.
//

import Foundation

struct SideDishes: Codable {
    let statusCode: Int
    let body: [Item]
}
