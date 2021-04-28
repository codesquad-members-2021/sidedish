//
//  FetchDishesUseCase.swift
//  BanchanCode
//
//  Created by Song on 2021/04/25.
//

import Foundation

protocol FetchDishesUseCase {
    func execute(requestValue: FetchDishesUseCaseRequestValue,
                 completion: @escaping (Result<Dishes, Error>) -> Void)
}

final class DefaultFetchDishesUseCase: FetchDishesUseCase {
    let networkManager = NetworkManager()
    
    func execute(requestValue: FetchDishesUseCaseRequestValue,
                 completion: @escaping (Result<Dishes, Error>) -> Void) {
        return fetchDishes(category: requestValue.category, completion: { result in
            completion(result)
        })
    }
    
    func fetchDishes(category: Categorizable,
                     completion: @escaping (Result<Dishes, Error>) -> Void) {
        let url = "http://ec2-3-36-241-44.ap-northeast-2.compute.amazonaws.com:8080/banchan-code/\(category.name)"
        networkManager.performRequest(urlString: url) { (responseDTO) in
            completion(.success(responseDTO.toDomain()))
        }
    }
}

struct FetchDishesUseCaseRequestValue {
    let category: Categorizable
}
