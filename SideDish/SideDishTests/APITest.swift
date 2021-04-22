//
//  APITest.swift
//  SideDishTests
//
//  Created by 박혜원 on 2021/04/22.
//

import XCTest
@testable import SideDish

class APITest: XCTestCase {

    func testLoadMainDish(){
        
        NSLog(CardAPI.loadDish(type: .main).description)
    }

}
