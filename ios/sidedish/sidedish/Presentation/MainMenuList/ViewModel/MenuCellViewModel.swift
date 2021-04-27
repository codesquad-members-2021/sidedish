//
//  MenuCellViewModel.swift
//  sidedish
//
//  Created by 박정하 on 2021/04/21.
//

import Foundation
import Combine

class MenuCellViewModel {
    
    @Published var dishesCategory: [SideDishesCategoryManageable]!
    @Published var dishes: [SideDishManageable]!
    @Published var errorMessage: String!
    
    private var subscriptions = Set<AnyCancellable>()
    private var turnonAppUsecase: ManufactureDataforViewModel
    
    init(turnonAppUsecase: ManufactureDataforViewModel) {
        self.turnonAppUsecase = turnonAppUsecase
    }
    
    convenience init() {
        let turnonAppUsecase = TurnonAppUsecase()
        self.init(turnonAppUsecase: turnonAppUsecase)
        dishesCategory = []
    }
    
    func configureMainmenuBoard() {
        turnonAppUsecase.manufactureForMainViewCategory()
            .sink(receiveCompletion: { (result) in
                if case .failure(let error) = result {
                    self.errorMessage = error.localizedDescription
                }
            }, receiveValue: { (category) in
                self.dishesCategory.append(category)
                self.updateEndpoint(from: category)
                print(self.dishesCategory)
                //self.loadSideDishes(count: categories.count)
            }).store(in: &subscriptions)
    }
    
    private func updateEndpoint(from category: SideDishesCategoryManageable) {
        EndPoint.sideDishes.append(category.getEndpoint())
    }
    
    private func loadSideDishes(count: Int) {
        self.dishes = []
        for i in 0..<count {
            turnonAppUsecase.manufactureForMainViewSideDishes(endPoint: EndPoint.sideDishes[i])
                .sink { (result) in
                    if case .failure(let error) = result {
                        self.errorMessage = error.localizedDescription
                    }
                } receiveValue: { (sideDish) in
                    self.dishes.append(sideDish)
                }.store(in: &subscriptions)
        }
    }
    
    func sideCategoryCount() -> Int {
        if dishesCategory == nil {
            return 0
        }
        else {
            return dishesCategory.count
        }
    }
    
    func sideDishesCount(section: Int) -> Int {
        if dishes == nil {
            return 0
        }
        else {
            return dishes.count
        }
    }
}
