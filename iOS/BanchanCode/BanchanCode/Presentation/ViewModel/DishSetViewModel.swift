//
//  DishesListViewModel.swift
//  BanchanCode
//
//  Created by Song on 2021/04/23.
//

import Foundation

protocol DishSetViewModelInput {
    func load()
    func getNumberOfItems() -> Int
}

protocol DishSetViewModelOutput {
    var category: Observable<Categorizable> { get }
    var items: Observable<[DishSetItemViewModel]> { get }
}

protocol DishSetViewModel: DishSetViewModelInput, DishSetViewModelOutput { }

final class DefaultDishSetViewModel: DishSetViewModel {
    private let fetchDishesUseCase: FetchDishesUseCase
    
    //MARK: - Output
    var category: Observable<Categorizable>
    var items: Observable<[DishSetItemViewModel]> = Observable([])
    
    //MARK: - Init
    init(fetchDishesUseCase: FetchDishesUseCase,
         category: Observable<Categorizable>) {
        self.fetchDishesUseCase = fetchDishesUseCase
        self.category = category
    }
}

//MARK: - Input
extension DefaultDishSetViewModel {
    func load() {
        fetchDishesUseCase.execute(requestValue: .init(category: category.value), completion: { (result) in
            switch result {
            case .success(let items):
                self.items.value = items.dishes.map(DishSetItemViewModel.init)
            case .failure(let error):
                print(error.localizedDescription)
                break
            }
        })
    }
    
    func getNumberOfItems() -> Int {
        items.value.count
    }
}
