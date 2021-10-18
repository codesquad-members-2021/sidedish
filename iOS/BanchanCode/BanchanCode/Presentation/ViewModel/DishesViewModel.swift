//
//  DishesListViewModel.swift
//  BanchanCode
//
//  Created by Song on 2021/04/23.
//

import Foundation

struct DishesListViewModelActions {
    let goToDishDetail: (String, Dish) -> Void
}

protocol DishesViewModelInput {
    func load()
    func getNumberOfItems() -> Int
    func didSelectItem(at index: Int)
}

protocol DishesViewModelOutput {
    var category: Observable<Categorizable> { get }
    var items: Observable<[DishesItemViewModel]> { get }
}

protocol DishesViewModel: DishesViewModelInput, DishesViewModelOutput { }

final class DefaultDishesViewModel: DishesViewModel {
    private let fetchDishesUseCase: FetchDishesUseCase
    private let actions: DishesListViewModelActions?
    
    //MARK: - Output
    var category: Observable<Categorizable>
    var items: Observable<[DishesItemViewModel]> = Observable([])
    
    //MARK: - Init
    init(fetchDishesUseCase: FetchDishesUseCase,
         category: Categorizable,
         actions: DishesListViewModelActions? = nil) {
        self.fetchDishesUseCase = fetchDishesUseCase
        self.category = Observable(category)
        self.actions = actions
    }
}

//MARK: - Input
extension DefaultDishesViewModel {
    func load() {
        fetchDishesUseCase.execute(requestValue: .init(categoryName: category.value.name), completion: { result in
            switch result {
            case .success(let items):
                self.items.value = items.dishes.map(DishesItemViewModel.init)
                self.category.value.items = items.dishes
            case .failure(let error):
                print(error.localizedDescription)
            }
        })
    }
    
    func getNumberOfItems() -> Int {
        return items.value.count
    }
    
    func didSelectItem(at index: Int) {
        actions?.goToDishDetail(category.value.name, items.value[index].dish)
    }
}
