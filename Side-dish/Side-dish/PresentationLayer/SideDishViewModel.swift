//
//  ViewModel.swift
//  Side-dish
//
//  Created by HOONHA CHOI on 2021/04/20.
//

import Foundation
import Combine

class SideDishViewModel {
    
    private let sideDishUseCase: SideDishProtocol
    private var cancellable = Set<AnyCancellable>()
    
    @Published var errorMessage = ""
    @Published var item: [Item] = []
    @Published var items : [Section : [Item]] = [:]
    
    init(sideDishUseCase: SideDishProtocol) {
        self.sideDishUseCase = sideDishUseCase
        request()
    }
    
    private func request() {
        sideDishUseCase.execute(path: .main)
            .sink { (complete) in
            if case .failure(let error) = complete {
                self.errorMessage = error.message
            }
        } receiveValue: { (SideDishes) in
            print("main \(SideDishes.body)")
            self.items[.main] = SideDishes.body
            self.item = SideDishes.body
        }.store(in: &cancellable)
        
        sideDishUseCase.execute(path: .soup).sink { (complete) in
            if case .failure(let error) = complete {
                self.errorMessage = error.message
            }
        } receiveValue: { (SideDishes) in
            print("soup \(SideDishes.body)")
            self.items[.soup] = SideDishes.body
            self.item = SideDishes.body
        }.store(in: &cancellable)
        
        sideDishUseCase.execute(path: .side).sink { (complete) in
            if case .failure(let error) = complete {
                self.errorMessage = error.message
            }
        } receiveValue: { (SideDishes) in
            self.items[.side] = SideDishes.body
            self.item = SideDishes.body
        }.store(in: &cancellable)
    }
    
    func fetchMain(completion: @escaping ([Item]) -> ()){
        $item
            .dropFirst()
            .sink { (item) in
            completion(item)
        }.store(in: &cancellable)
    }
    
    func fetchMain1(completion: @escaping ([Item]) -> ()){
        $items
            .dropFirst()
            .sink { (item) in
                print("1")
//                print("fetch main \(item)")
                completion(self.items[.main] ?? [])
        }.store(in: &cancellable)
    }
    
    func fetchMain2(completion: @escaping ([Item]) -> ()){
        $items
            .dropFirst()
            .sink { (item) in
                print("2")
                completion(self.items[.soup] ?? [])
        }.store(in: &cancellable)
    }

    
    func fetchSoup(completion: @escaping ([Item]) -> ()){
        $item
            .dropFirst()
            .sink { (item) in
            completion(item)
        }.store(in: &cancellable)
    }
    
    func fetchSide(completion: @escaping ([Item]) -> ()){
        $item
            .dropFirst()
            .sink { (item) in
            completion(item)
        }.store(in: &cancellable)
    }
    
    func except(completion: @escaping ((String) ->())) {
        $errorMessage
            .dropFirst()
            .sink { (message) in
            completion(message)
        }.store(in: &cancellable)
    }
}
