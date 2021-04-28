//
//  NetworkTests.swift
//  SideDishAppTests
//
//  Created by 이다훈 on 2021/04/27.
//
import XCTest
import Combine
@testable import SideDishApp

class NetworkTests: XCTestCase {
    private var sut: DishNetworkManager!
    private var subScribtion = Set<AnyCancellable>()
    override func setUp() {
        sut = DishNetworkManager.init(networkManager: MockNetworkManager(session: MockNetworkSessionSuccess()))
    }
    
    func testDataTaskPublisher() {
        let expt = expectation(description: "waiting......")
        var result = [Dishes.init(category: "", name: "", dishes: [])]
        let answer = Dishes.init(category: "test", name: "success", dishes: [])
        
        sut.getDishes(path: "test")
            .sink(receiveCompletion: { response in
            }, receiveValue: { data in
                result = data
                expt.fulfill()
            })
            .store(in: &subScribtion)
        waitForExpectations(timeout: 5.0, handler: nil)
        XCTAssertEqual(result.first, answer)
    }

}
