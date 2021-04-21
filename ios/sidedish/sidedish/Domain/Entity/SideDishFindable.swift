//
//  SideDishFindable.swift
//  sidedish
//
//  Created by Song on 2021/04/20.
//

import Foundation

protocol SideDishFindable {
    
    func count() -> Int
    
    func sideDish(at index: Int) -> SideDish?
    
}
