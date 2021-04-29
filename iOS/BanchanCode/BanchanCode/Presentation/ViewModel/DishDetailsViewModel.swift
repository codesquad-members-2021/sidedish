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
    var basicInformation: Observable<BasicInformation> { get }
    var thumbImages: Observable<[Data]> { get }
    var detailImages: Observable<[Data]> { get }
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
    private var thumbImagePaths: [String] = []
    private var detailImagePaths: [String] = []
    private let networkManager: NetworkManager = NetworkManager()
    
    //MARK: - Output
    var basicInformation: Observable<BasicInformation>
    var thumbImages: Observable<[Data]> = Observable([])
    var detailImages: Observable<[Data]> = Observable([])
    
    init(fetchDishDetailsUseCaseFactory: @escaping FetchDishDetailsUseCaseFactory,
         categoryName: String,
         id: Int) {
        self.fetchDishDetailsUseCaseFactory = fetchDishDetailsUseCaseFactory
        self.categoryName = categoryName
        self.id = id
        basicInformation = Observable(BasicInformation(id: id))
    }
    
    private func updateThumbnailImages() {
        thumbImagePaths.forEach { path in
            networkManager.updateThumbImage(imageURL: path) { imageData in
                self.thumbImages.value.append(imageData)
            }
        }
    }
    
    private func updateDetailImages() {
        detailImagePaths.forEach { path in
            networkManager.updateThumbImage(imageURL: path) { imageData in
                self.detailImages.value.append(imageData)
            }
        }
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
                guard let thumbImagePaths = dishDetail.thumbImages else { return }
                guard let detailImagePaths = dishDetail.detailImages else { return }
                self.thumbImagePaths = thumbImagePaths
                self.detailImagePaths = detailImagePaths
                self.updateThumbnailImages()
                self.updateDetailImages()
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
