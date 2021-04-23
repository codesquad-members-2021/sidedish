//
//  DishesListViewModel.swift
//  BanchanCode
//
//  Created by Song on 2021/04/23.
//

import Foundation

protocol DishesListViewModelInput {
    
}

protocol DishesListViewModelOutput {
    var category: Observable<String> { get }
    var sectionTitle: String? { get }
    var dishes: Observable<[DishesListItemViewModel]> { get }
}

protocol DishesListViewModel: DishesListViewModelInput, DishesListViewModelOutput { }

final class DefaultDishesListViewModel: DishesListViewModel {
    
    //MARK: - Output
    var category: Observable<String> = Observable("")
    var sectionTitle: String? {
        switch category.value {
        case "main":
            return "모두가 좋아하는 든든한 메인요리"
        case "soup":
            return "정성이 담긴 뜨끈뜨끈 국물요리"
        case "side":
            return "식탁을 풍성하게 하는 정갈한 밑반찬"
        default:
            return nil
        }
    }
    var dishes: Observable<[DishesListItemViewModel]> = Observable([])
    
    //MARK: - Init
    init() { }
    
    func load() {
        NetworkManager.performRequest(urlString: "https://79129275-12cd-405a-80a6-677b968b1977.mock.pstmn.io/banchan-code/\(category.value)") { (dishes) in
            self.dishes.value = dishes.toDomain().dishes.map(DishesListItemViewModel.init)
        }
    }
}

//MARK: - Input
extension DefaultDishesListViewModel {
    
    func updateDishList() {
        
    }
}
