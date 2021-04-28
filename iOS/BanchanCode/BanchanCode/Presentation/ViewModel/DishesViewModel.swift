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
        //test
        let realm = try! Realm()
//        realm.deleteAll() // test용도.
        
        fetchDishesUseCase.execute(requestValue: .init(categoryName: category.value.name), completion: { (result) in
            switch result {
            case .success(let items):
                self.items.value = items.dishes.map(DishesItemViewModel.init)
                
                //DB Manager가 해야 할 일 let mn = realmManager로 불러서 하기.
                
                self.items.value.forEach{ item in
                    let dishDB = DishDB(id: item.dish.id, name: item.dish.name, contents: item.dish.description, imageURL: item.dish.imageURL)
                    
                    item.dish.prices.forEach {
                        dishDB.prices.append($0)
                    }
                    item.dish.badges.forEach {
                        dishDB.badges.append($0)
                    }

                    try! realm.write {
                        realm.add(dishDB)
                    }
                }
                
            
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
