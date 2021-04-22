//
//  API.swift
//  SideDish
//
//  Created by 박혜원 on 2021/04/20.
//

import Alamofire
import Foundation
import Combine

class API {

    struct Response<T> {
        let value: T
        let response : URLResponse
    }
    
    func run<T: Decodable>(_ request: DataRequest, _ decoder: JSONDecoder = JSONDecoder()) -> AnyPublisher<API.Response<T>, APIError> {

        return request
            .validate(contentType: ["application/json"])
            .validate()
            .publishData(emptyResponseCodes: [200, 204, 205])
            .tryMap { result -> API.Response<T> in
                // TODO: Error Handling
                
                if let data = result.data {
                    // 응답이 성공이고 result가 있을 때
                    let value = try decoder.decode(T.self, from: data)
                    return Response(value: value, response: result.response!)
                } else {
                    // 응답이 성공이고 result가 없을 때 Empty를 리턴
                    return Response(value: Empty.emptyValue() as! T, response: result.response!)
                }
            }
            .mapError({ (error) -> APIError in
                if let apiError = error as? APIError {
                    return apiError
                } else {
                    return .other(error)
                }
            })
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
        
    }
}
