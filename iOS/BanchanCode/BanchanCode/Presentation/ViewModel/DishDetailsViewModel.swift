//
//  DishDetailsViewModel.swift
//  BanchanCode
//
//  Created by Song on 2021/04/28.
//

import Foundation

protocol DishDetailsViewModelInput {
    func load()
    func loadbyDB()
    
}

protocol DishDetailsViewModelOutput {
    var dishDetail: Observable<DishDetail> { get }
}

protocol DishDetailsViewModel: DishDetailsViewModelInput, DishDetailsViewModelOutput { }

typealias FetchDishDetailsUseCaseFactory = (
    FetchDishDetailsUseCase.RequestValue,
    @escaping (FetchDishDetailsUseCase.ResultValue) -> Void
) -> UseCase

final class DefaultDishDetailsViewModel: DishDetailsViewModel {
    
    private let fetchDishDetailsUseCaseFactory: FetchDishDetailsUseCaseFactory
    private let categoryName: String
    private let id: Int
    
    //MARK: - Output
    var dishDetail: Observable<DishDetail>
    
    init(fetchDishDetailsUseCaseFactory: @escaping FetchDishDetailsUseCaseFactory,
         categoryName: String,
         id: Int) {
        self.fetchDishDetailsUseCaseFactory = fetchDishDetailsUseCaseFactory
        self.categoryName = categoryName
        self.id = id
        self.dishDetail = Observable(DishDetail(id: id))
    }
}

//MARK: - Input
extension DefaultDishDetailsViewModel {
    func load() {
        let request = FetchDishDetailsUseCase.RequestValue(categoryName: categoryName, id: id)
        let completion: (FetchDishDetailsUseCase.ResultValue) -> Void = { result in
            switch result {
            case .success(let dishDetail):
                self.dishDetail.value = dishDetail
                let realmManager = RealmManager()
//                realmManager.addDishDetail(disheDetail: self.dishDetail.value)
            case .failure: break
            }
        }
        let useCase = fetchDishDetailsUseCaseFactory(request, completion)
        useCase.start()
    }
    
    func loadbyDB() {
        let realmManager = RealmManager()
        /*상세보기로 저장되지 않은 뷰를 보러갈때 이슈가 난다.*/
//        self.dishDetail.value = realmManager.getDishesID(by: self.id)!
    }
}
