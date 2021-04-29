//
//  DishDetailsViewModel.swift
//  BanchanCode
//
//  Created by Song on 2021/04/28.
//

import Foundation

protocol DishDetailsViewModelInput {
    func load()
}

protocol DishDetailsViewModelOutput {
    var basicInformation: Observable<BasicInformation> { get }
    var thumbImages: Observable<[String]> { get }
    var detailImages: Observable<[String]> { get }
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
    var basicInformation: Observable<BasicInformation>
    var thumbImages: Observable<[String]> = Observable([])
    var detailImages: Observable<[String]> = Observable([])
    
    init(fetchDishDetailsUseCaseFactory: @escaping FetchDishDetailsUseCaseFactory,
         categoryName: String,
         id: Int) {
        self.fetchDishDetailsUseCaseFactory = fetchDishDetailsUseCaseFactory
        self.categoryName = categoryName
        self.id = id
        basicInformation = Observable(BasicInformation(id: id))
    }
}

//MARK: - Input
extension DefaultDishDetailsViewModel {
    func load() {
        let request = FetchDishDetailsUseCase.RequestValue(categoryName: categoryName, id: id)
        let completion: (FetchDishDetailsUseCase.ResultValue) -> Void = { result in
            switch result {
            case .success(let dishDetail):
                self.basicInformation.value = dishDetail.basicInformation
                guard let thumbImages = dishDetail.thumbImages else { return }
                guard let detailImages = dishDetail.detailImages else { return }
                self.thumbImages.value = thumbImages
                self.detailImages.value = detailImages
            case .failure: break
            }
        }
        let useCase = fetchDishDetailsUseCaseFactory(request, completion)
        useCase.start()
    }
}
