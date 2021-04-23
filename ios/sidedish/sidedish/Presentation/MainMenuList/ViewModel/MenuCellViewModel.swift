//
//  MenuCellViewModel.swift
//  sidedish
//
//  Created by 박정하 on 2021/04/21.
//

import Foundation
import Combine

class MenuCellViewModel{
    
    @Published var dishes : SideDishesManageable!
    @Published var errorMessage : String = ""
    
    private var subscriptions = Set<AnyCancellable>()
    private var turnonAppUsecase : TurnonAppUsecase
    
    init(turnonAppUsecase : TurnonAppUsecase) {
        self.turnonAppUsecase = turnonAppUsecase
    }
    
    convenience init() {
        let turnonAppUsecase = TurnonAppUsecase()
        self.init(turnonAppUsecase : turnonAppUsecase)
    }
    
    func configureMainmenuBoard(){
        turnonAppUsecase.manufactureForMainView()
            .sink(receiveCompletion: { (result) in
                if case .failure(let error) = result {
                    self.errorMessage = error.localizedDescription
                }
            }, receiveValue: { (dishes) in
                self.dishes = dishes
            }).store(in: &subscriptions)
    }
    
    func sideCategoryCount() -> Int{
        if dishes == nil {
            return 0
        }
        else {
            return dishes.getCountdishesSection()
        }
    }
    
    func sideDishesCount(section : Int) -> Int{
        if dishes == nil{
            return 0
        }
        else {
            return dishes.getCountdishes(section: section)
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
