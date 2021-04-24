//
//  MenuCellViewModel.swift
//  sidedish
//
//  Created by 박정하 on 2021/04/21.
//

import Foundation
import Combine

class MenuCellViewModel{
    
    @Published var dishesCategory : [SideDishesCategory]!
    @Published var dishes : [[SideDish]]!
    @Published var errorMessage : String!
    
    private var subscriptions = Set<AnyCancellable>()
    private var turnonAppUsecase: ManufactureDataforViewModel
    
    init(turnonAppUsecase: ManufactureDataforViewModel) {
        self.turnonAppUsecase = turnonAppUsecase
    }
    
    convenience init() {
        let turnonAppUsecase = TurnonAppUsecase()
        self.init(turnonAppUsecase: turnonAppUsecase)
    }
    
    func configureMainmenuBoard(){
        turnonAppUsecase.manufactureForMainViewCategory()
            .sink(receiveCompletion: { (result) in
                if case .failure(let error) = result {
                    self.errorMessage = error.localizedDescription
                }
            }, receiveValue: { (category) in
                self.dishesCategory = category
                self.updateEndpoint(from: category)
                self.loadSideDishes(count: category.count)
            }).store(in: &subscriptions)
    }
    
    private func updateEndpoint(from categories: [SideDishesCategory]) {
        categories.forEach { (category) in
            EndPoint.sideDishes.append(category.endPoint)
        }
    }
    
    private func loadSideDishes(count: Int) {
        self.dishes = Array(repeating: [], count: count)
        for i in 0..<count {
            turnonAppUsecase.manufactureForMainViewSideDishes(endPoint: EndPoint.sideDishes[i])
                .sink { (result) in
                    if case .failure(let error) = result {
                        self.errorMessage = error.localizedDescription
                    }
                } receiveValue: { (sideDish) in
                    self.dishes[i] = sideDish
                }.store(in: &subscriptions)
        }
    }
    
    func sideCategoryCount() -> Int{
        if dishesCategory == nil {
            return 0
        }
        else {
            return dishesCategory.count
        }
    }
    
    func sideDishesCount(section: Int) -> Int{
        if dishes == nil {
            return 0
        }
        else {
            return dishes[section].count
        }
    }
    
//    func configureAlertMessage() {
//        $errorMessage
//            .dropFirst()
//            .sink { (message) in
//                self.errorMessage = message
//            }.store(in: &subscriptions)
//    }
}
