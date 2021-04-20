//
//  APITest.swift
//  SideDishTests
//
//  Created by 박혜원 on 2021/04/20.
//

import XCTest
@testable import SideDish

class APITest: XCTestCase {

    func testLoadMainDish(){
        API().loadMainDish(completion: { (result) in
            switch result {
            case .failure(let error) : print(error)
            case .success(let cards) : print(cards)
            }
        })
    }

}
