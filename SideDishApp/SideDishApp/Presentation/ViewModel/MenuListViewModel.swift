//
//  MenuListViewModel.swift
//  SideDishApp
//
//  Created by 오킹 on 2021/04/21.
//

import Foundation
import Combine
import CoreData

class MenuListViewModel {
    private let menuListUseCase: MenuListUseCasePort
    private var subscriptions = Set<AnyCancellable>()
    @Published var main: [Dishes] = []
    @Published var soup: [Dishes] = []
    @Published var side: [Dishes] = []
    private let cache = CoreDataMenuResponseStorage.shared
    
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
                    case .finished:
                        break
                    case .failure(.urlError):
                        assertionFailure("url")
                    case .failure(.networkConnection):
                        assertionFailure("networkConnection")
                    case .failure(.responseNil):
                        assertionFailure("responseNil")
                    case .failure(.parsing):
                        assertionFailure("parsing")
                    case .failure(.unknown):
                        assertionFailure("unknown")
                    } },
                  
                  receiveValue: { data in
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
        fetchDishes(dish: "soup")
        fetchDishes(dish: "side")
    }
}
