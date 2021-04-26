//
//  DI.swift
//  Side-dish
//
//  Created by HOONHA CHOI on 2021/04/26.
//

import Foundation

@propertyWrapper
class Dependency<T> {
    
    let wrappedValue: T
    
    init() {
        self.wrappedValue = DIContainer.shared.resolve()
    }
}


