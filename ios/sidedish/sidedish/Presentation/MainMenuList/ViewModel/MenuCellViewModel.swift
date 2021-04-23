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
    @Published var errorMessage : String = ""
    
    private var subscriptions = Set<AnyCancellable>()
    private var turnonAppUsecase : TurnonAppUsecase
    
    init(turnonAppUsecase : TurnonAppUsecase) {
        self.turnonAppUsecase = turnonAppUsecase
    }
    
    convenience init() {
        let turnonAppUsecase = TurnonAppUsecase()
        self.init(turnonAppUsecase : turnonAppUsecase)
        self.dishes = [[],[],[]]
    }
    
    func configureMainmenuBoard(){
        turnonAppUsecase.manufactureForMainViewCategory()
            .sink(receiveCompletion: { (result) in
                if case .failure(let error) = result {
                    self.errorMessage = error.localizedDescription
                }
            }, receiveValue: { (category) in
                self.dishesCategory = category
            }).store(in: &subscriptions)
        
        turnonAppUsecase.manufactureforMainViewMainDishes()
            .sink(receiveCompletion: { (result) in
                if case .failure(let error) = result {
                    self.errorMessage = error.localizedDescription
                }
            }, receiveValue: { (dishes) in
                for i in 0..<dishes.count {
                    self.dishes[0].append(dishes[i])
                }
            }).store(in: &subscriptions)
        
        turnonAppUsecase.manufactureforMainViewSideDishes()
            .sink(receiveCompletion: { (result) in
                if case .failure(let error) = result {
                    self.errorMessage = error.localizedDescription
                }
            }, receiveValue: { (dishes) in
                for i in 0..<dishes.count {
                    self.dishes[1].append(dishes[i])
                }
            }).store(in: &subscriptions)
    }
    
    func sideCategoryCount() -> Int{
        if dishesCategory == nil {
            return 0
        }
        else {
            return dishes.count
        }
    }
    
    func sideDishesCount(section : Int) -> Int{
        if dishes.isEmpty {
            return 0
        }
        else {
            return dishes[section].count
        }
    }
    
    func configureAlertMessage(completion : @escaping ((String)->())){
        $errorMessage
            .dropFirst()
            .sink { (message) in
                completion(message)
            }.store(in: &subscriptions)
    }
}
