//
//  DishesListViewModel.swift
//  BanchanCode
//
//  Created by Song on 2021/04/23.
//

import Foundation
import RealmSwift

protocol DishesViewModelInput {
    func load()
    func loadByDB()
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
        
        let realmManager = RealmManager()
        
        fetchDishesUseCase.execute(requestValue: .init(categoryName: category.value.name), completion: { (result) in
            switch result {
            case .success(let items):
                self.items.value = items.dishes.map(DishesItemViewModel.init)
                //이곳에서 DB에 add를 할것이다.
                realmManager.addDishes(dishesItem: self.items.value, categoryName: self.category.value.name)
                
            case .failure(let error):                
                print(error.localizedDescription)
                break
            }
        })
    }
    
    func loadByDB() {
        let realmManager = RealmManager()
        self.items.value = realmManager.getDishes(by: self.category.value.name)
    }
    
    func getNumberOfItems() -> Int {
        items.value.count
    }
}
