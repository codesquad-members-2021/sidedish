//
//  DishesListViewModel.swift
//  BanchanCode
//
//  Created by Song on 2021/04/23.
//

import Foundation

protocol DishesListViewModelInput {
    func load(category: Categorizable)
}

protocol DishesListViewModelOutput {
    var category: Observable<Categorizable?> { get }
    var items: Observable<[DishesListItemViewModel]> { get }
}

protocol DishesListViewModel: DishesListViewModelInput, DishesListViewModelOutput { }

final class DefaultDishesListViewModel: DishesListViewModel {
    private let fetchDishesUseCase: FetchDishesUseCase
    
    //MARK: - Output
    var category: Observable<Categorizable?> = Observable(.none)
    var items: Observable<[DishesListItemViewModel]> = Observable([])
    
    //MARK: - Init
    init(fetchDishesUseCase: FetchDishesUseCase) {
        self.fetchDishesUseCase = fetchDishesUseCase
    }
}

//MARK: - Input
extension DefaultDishesListViewModel {
    func load(category: Categorizable) {
        self.category.value = category
        
        fetchDishesUseCase.execute(requestValue: .init(category: category), completion: { (result) in
            switch result {
            case .success(let items):
                self.items.value = items.dishes.map(DishesListItemViewModel.init)
            case .failure(let error):
                print(error.localizedDescription)
                break
            }
        })
    }
}
