//
//  MenuListViewModel.swift
//  SideDishApp
//
//  Created by 오킹 on 2021/04/21.
//

import Foundation
import Combine

class MenuListViewModel {
    private let menuListUseCase = MenuListUseCase()
    private var subscriptions = Set<AnyCancellable>()
    @Published var dishes: [Dish] = []
    
    func fetchDishes() {
        menuListUseCase.showMenu()
            .sink(receiveCompletion: { result in
                    switch result {
                    case .finished: print("끝")
                    case .failure(.url):
                         /*에러처리*/ print("url")
                    case .failure(.networkConnection):
                         /*에러처리*/ print("networkConnection")
                    case .failure(.responseNil):
                         /*에러처리*/ print("responseNil")
                    case .failure(.parsing):
                         /*에러처리*/ print("parsing")
                    case .failure(.unknown):
                         /*에러처리*/ print("unknown")
                    } },
                  
                  receiveValue: { data in
                    print("성공")
                  })
            .store(in: &subscriptions)
        
    }
}
