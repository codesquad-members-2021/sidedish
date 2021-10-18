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
    
    private func fetchDishDetails(categoryName: String, id: Int, completion: @escaping (ResultValue) -> Void) {
        //let url = "http://ec2-3-36-241-44.ap-northeast-2.compute.amazonaws.com:8080/banchan-code/\(categoryName)/\(id)"
        let url = "https://79129275-12cd-405a-80a6-677b968b1977.mock.pstmn.io/banchan-code/main/1"
        
        networkManager.performRequest(urlString: url) { (result: Result<DishDetailResponseDTO, Error>) in
            switch result {
            case .success(let responseDTO):
                completion(.success(responseDTO.toDomain()))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
