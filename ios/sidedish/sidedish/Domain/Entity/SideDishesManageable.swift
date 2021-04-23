//
//  SideDishesManagble.swift
//  sidedish
//
//  Created by 박정하 on 2021/04/23.
//

import Foundation

protocol SideDishesManageable {
    func getCountdishesSection() -> Int
    func getCountdishes(section : Int) -> Int
    func getsidedish(section : Int) -> SideDishes
}
