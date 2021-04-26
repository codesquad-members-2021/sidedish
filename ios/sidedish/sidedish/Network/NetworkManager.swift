//
//  AlamofireManager.swift
//  sidedish
//
//  Created by Song on 2021/04/25.
//

import Foundation
import Combine
import Alamofire

class NetworkManager: AFNetworkManagable {
    
    private let requestManager: AFRequestManagable
    
    init(baseAddress: String) {
        self.requestManager = RequestManager(baseAddress: baseAddress)
    }
    
    func get<T: Decodable>(decodingType: T.Type, endPoint: String) -> AnyPublisher<T, AFError> {
        let request = requestManager.AFRequest(for: .get, endPoint: endPoint, parameters: nil)
        return request.publishDecodable(type: decodingType).value().eraseToAnyPublisher()
    }
    
}
