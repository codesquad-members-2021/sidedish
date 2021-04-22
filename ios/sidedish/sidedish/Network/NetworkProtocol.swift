//
//  NetworkProtocol.swift
//  sidedish
//
//  Created by 박정하 on 2021/04/21.
//

import Foundation
import Combine

protocol NetworkProtocol {
    func get<T>(type: T.Type, endPoint: EndPoint) -> AnyPublisher<T, Error> where T: Decodable
}
