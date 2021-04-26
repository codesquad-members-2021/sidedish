//
//  AlamofireManagable.swift
//  sidedish
//
//  Created by Song on 2021/04/25.
//

import Foundation
import Combine
import Alamofire

protocol AFNetworkManagable {
    
    func get<T: Decodable>(decodingType: T.Type, endPoint: String) -> AnyPublisher<T, AFError>

}
