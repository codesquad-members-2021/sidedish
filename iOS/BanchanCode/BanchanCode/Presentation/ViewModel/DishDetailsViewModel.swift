//
//  DishDetailsViewModel.swift
//  BanchanCode
//
//  Created by Song on 2021/04/28.
//

import Foundation

protocol DishDetailsViewModelInput {
    func load()
    func increaseQuantity()
    func decreaseQuantity()
    func updateTotalPrice()
}

protocol DishDetailsViewModelOutput {
    var basicInformation: Observable<BasicInformation> { get }
    var lastPrice: Int { get }
    var originalPrice: Int? { get }
    var thumbImages: Observable<[Data]> { get }
    var detailImages: Observable<[Data]> { get }
    var currentQuantity: Observable<Int> { get }
    var totalPrice: Observable<Int> { get }
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
    var lastPrice: Int = 0
    var originalPrice: Int? = nil
    var thumbImages: Observable<[Data]> = Observable([])
    var detailImages: Observable<[Data]> = Observable([])
    var currentQuantity: Observable<Int> = Observable(1)
    var totalPrice: Observable<Int> = Observable(0)
    
    init(fetchDishDetailsUseCaseFactory: @escaping FetchDishDetailsUseCaseFactory,
         categoryName: String,
         id: Int) {
        self.fetchDishDetailsUseCaseFactory = fetchDishDetailsUseCaseFactory
        self.categoryName = categoryName
        self.id = id
        self.basicInformation = Observable(BasicInformation(id: id))
    }
    
    private func getOriginalPrice(from prices: [Int]) -> Int? {
        return prices.count > 1 ? prices.first : nil
    }
    
    private func updateThumbnailImages() {
        thumbImagePaths.forEach { path in
            networkManager.performDataRequest(urlString: path) { imageData in
                self.thumbImages.value.append(imageData)
            }
        }
    }
    
    private func updateDetailImages() {
        detailImagePaths.forEach { path in
            networkManager.performDataRequest(urlString: path) { imageData in
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
                guard let prices = dishDetail.basicInformation.prices else { return }
                self.lastPrice = prices.last ?? 0
                self.originalPrice = self.getOriginalPrice(from: prices)
                self.updateTotalPrice()
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
    
    func increaseQuantity() {
        currentQuantity.value += 1
    }
    
    func decreaseQuantity() {
        currentQuantity.value -= 1
    }
    
    func updateTotalPrice() {
        totalPrice.value = currentQuantity.value * lastPrice
    }
}
