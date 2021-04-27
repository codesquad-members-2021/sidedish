//
//  FetchDishesUseCase.swift
//  BanchanCode
//
//  Created by Song on 2021/04/25.
//

import Foundation

protocol FetchDishesUseCase {
    func execute(requestValue: FetchDishesUseCaseRequestValue,
                 completion: @escaping (Result<DishSet, Error>) -> Void)
}

final class DefaultFetchDishesUseCase: FetchDishesUseCase {
    let networkManager = NetworkManager()
    
    func execute(requestValue: FetchDishesUseCaseRequestValue,
                 completion: @escaping (Result<DishSet, Error>) -> Void) {
        return fetchDishes(category: requestValue.category, completion: { result in
            completion(result)
        })
    }
    
    func fetchDishes(category: Categorizable,
                     completion: @escaping (Result<DishSet, Error>) -> Void) {
        let url = "https://79129275-12cd-405a-80a6-677b968b1977.mock.pstmn.io/banchan-code/\(category.name)"
        networkManager.performRequest(urlString: url) { (responseDTO) in
            completion(.success(responseDTO.toDomain()))
        }
    }
}

struct FetchDishesUseCaseRequestValue {
    let category: Categorizable
}
