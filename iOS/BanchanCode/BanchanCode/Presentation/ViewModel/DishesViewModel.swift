//
//  DishesListViewModel.swift
//  BanchanCode
//
//  Created by Song on 2021/04/23.
//

import Foundation

protocol DishesViewModelInput {
    func load()
    func getNumberOfItems() -> Int
}

protocol DishesViewModelOutput {
    var category: Observable<Categorizable> { get }
    var items: Observable<[DishesItemViewModel]> { get }
}

protocol DishesViewModel: DishesViewModelInput, DishesViewModelOutput { }

final class DefaultDishesViewModel: DishesViewModel {
    private let fetchDishesUseCase: FetchDishesUseCase
    
    //MARK: - Output
    var category: Observable<Categorizable>
    var items: Observable<[DishesItemViewModel]> = Observable([])
    
    //MARK: - Init
    init(fetchDishesUseCase: FetchDishesUseCase,
         category: Observable<Categorizable>) {
        self.fetchDishesUseCase = fetchDishesUseCase
        self.category = category
    }
}

//MARK: - Input
extension DefaultDishesViewModel {
    func load() {
        fetchDishesUseCase.execute(requestValue: .init(category: category.value), completion: { (result) in
            switch result {
            case .success(let items):
                self.items.value = items.dishes.map(DishesItemViewModel.init)
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
