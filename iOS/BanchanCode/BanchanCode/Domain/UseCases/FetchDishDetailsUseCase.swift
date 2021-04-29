//
//  FetchDishDetailsUseCase.swift
//  BanchanCode
//
//  Created by Song on 2021/04/28.
//

import Foundation

final class FetchDishDetailsUseCase: UseCase {
    let networkManager = NetworkManager()
    struct RequestValue {
        let categoryName: String
        let id: Int
    }
    typealias ResultValue = (Result<DishDetail, Error>)
    
    private let requestValue: RequestValue
    private let completion: (ResultValue) -> Void
    
    init(requestValue: RequestValue,
         completion: @escaping (ResultValue) -> Void) {
        self.requestValue = requestValue
        self.completion = completion
    }
    
    func start() {
        fetchDishDetails(categoryName: requestValue.categoryName, id: requestValue.id, completion: completion)
    }
    
    private func fetchDishDetails(categoryName: String, id: Int, completion: @escaping (Result<DishDetail, Error>) -> Void) {
        let url = "http://ec2-3-36-241-44.ap-northeast-2.compute.amazonaws.com:8080/banchan-code/\(categoryName)/\(id)"
        networkManager.performRequest(urlString: url) { (responseDTO: DishDetailResponseDTO) in
            self.completion(.success(responseDTO.toDomain()))
        }
    }
}
