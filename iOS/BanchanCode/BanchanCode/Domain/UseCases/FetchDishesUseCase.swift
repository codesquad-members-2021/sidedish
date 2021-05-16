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
    //let realmManager = RealmManager()
    
    func execute(requestValue: FetchDishesUseCaseRequestValue,
                 completion: @escaping (Result<Dishes, Error>) -> Void) {
        return fetchDishes(categoryName: requestValue.categoryName, completion: { result in
            switch result {
            case .success(let response):
                //self.realmManager.addDishes(items: response.dishes.map(DishesItemViewModel.init), categoryName: requestValue.categoryName)
                completion(.success(response))
            case .failure(let error):
                completion(.failure(error))
            }
        })
    }
    
    private func fetchDishes(categoryName: String,
                             completion: @escaping (Result<Dishes, Error>) -> Void) {
        //let url = "http://ec2-3-36-241-44.ap-northeast-2.compute.amazonaws.com:8080/banchan-code/\(categoryName)"
        let url = "https://79129275-12cd-405a-80a6-677b968b1977.mock.pstmn.io/banchan-code/\(categoryName)"
        
        networkManager.performRequest(urlString: url) { (result : Result<DishesResponseDTO, Error>) in 
            switch result {
            case .success(let responseDTO):
                completion(.success(responseDTO.toDomain()))
            case .failure(_):
                break
                //completion(.success(self.realmManager.getDishes(categryName: categoryName)))
            }
        }
    }
}

struct FetchDishesUseCaseRequestValue {
    let categoryName: String
}
