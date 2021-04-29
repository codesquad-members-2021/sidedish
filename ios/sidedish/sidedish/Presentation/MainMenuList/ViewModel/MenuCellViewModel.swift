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
    @Published var dishes: [[SideDishManageable]]!
    @Published var errorMessage: String!
    
    private var cancelBag = Set<AnyCancellable>()
    private var turnonAppUsecase: ManufactureDataforViewModel
    
    init(turnonAppUsecase: ManufactureDataforViewModel) {
        self.turnonAppUsecase = turnonAppUsecase
    }
    
    convenience init() {
        let turnonAppUsecase = TurnonAppUsecase()
        self.init(turnonAppUsecase: turnonAppUsecase)
    }
    
    func configureMainmenuBoard() {
        turnonAppUsecase.manufactureForMainViewCategory { (publisher) in
            publisher.sink(receiveCompletion: { (result) in
                if case .failure(let error) = result {
                    self.errorMessage = error.localizedDescription
                }
            }, receiveValue: { (categories) in
                let orderedCategories = categories.sorted { (first, second) -> Bool in
                    first.getID() < second.getID()
                }
                self.dishesCategory = orderedCategories
                self.updateEndpoint(from: orderedCategories)
                self.loadSideDishes(count: orderedCategories.count)
            }).store(in: &self.cancelBag)
        }
    }
    
    private func updateEndpoint(from categories: [SideDishesCategoryManageable]) {
        categories.forEach { (category) in
            EndPoint.sideDishes.append(category.getEndpoint())
        }
    }
    
    private func loadSideDishes(count: Int) {
        self.dishes = Array(repeating: [], count: count)
        for section in 0..<count {
            turnonAppUsecase.manufactureForMainViewSideDishes(endPoint: EndPoint.sideDishes[section]) { (publisher) in
                publisher.sink { (result) in
                    if case .failure(let error) = result {
                        self.errorMessage = error.localizedDescription
                    }
                } receiveValue: { (sideDish) in
                    self.dishes[section] = sideDish
                    for (row, dish) in sideDish.enumerated() {
                        self.loadThumbnails(for: dish, section: section, row: row)
                    }
                }.store(in: &self.cancelBag)
            }
        }
    }
    
    private func loadThumbnails(for sideDish: SideDishManageable, section: Int, row: Int) {
        turnonAppUsecase.thumbnailForMainiewSideDishes(url: sideDish.getImageURL(), id: sideDish.getID()) { (publisher) in
            publisher.sink { (thumbnailPath) in
                self.dishes[section][row].updateThumbnailPath(thumbnailPath)
            }.store(in: &self.cancelBag)
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
            return dishes[section].count
        }
    }
}
