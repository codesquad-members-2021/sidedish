//
//  MenuListViewModel.swift
//  SideDishApp
//
//  Created by 오킹 on 2021/04/21.
//

import Foundation
import Combine

class MenuListViewModel {
    private let menuListUseCase: MenuListUseCasePort
    private var subscriptions = Set<AnyCancellable>()
    @Published var main: [Dishes] = []
    @Published var soup: [Dishes] = []
    @Published var side: [Dishes] = []
    
    init(menuListUseCase: MenuListUseCasePort) {
        self.menuListUseCase = menuListUseCase
    }
    
    convenience init() {
        let menuListUseCase = MenuListUseCase()
        self.init(menuListUseCase: menuListUseCase)
    }
    
    func fetchDishes(dish: String) {
        menuListUseCase.showMenu(food: dish)
            .sink(receiveCompletion: { result in
                    switch result {
                    case .finished: print("끝")
                    case .failure(.urlError):
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
                    switch dish {
                    case "main":
                        self.main = data
                    case "soup":
                        self.soup = data
                    case "side":
                        self.side = data
                    default:
                        break
                    }
                  })
            .store(in: &subscriptions)
    }
    
    func requestDishes() {
        fetchDishes(dish: "main")
        //fetchDishes(dish: "soup")
        //fetchDishes(dish: "side")
    }
}
