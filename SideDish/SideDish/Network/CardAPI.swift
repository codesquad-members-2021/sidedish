//
//  API.swift
//  SideDish
//
//  Created by 박혜원 on 2021/04/20.
//

import Alamofire
import Foundation
import Combine

enum EndPoint : String, CodingKey {
    case main
    case soup
    case side
    
    static let baseURL = "https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/"
    var path : String { self.stringValue }
    var url : URL { URL(string: EndPoint.baseURL + path)! }
}

class CardAPI {

    static func loadDish(type : EndPoint) -> AnyPublisher<CardsResponse, APIError> {
        let request = AF.request(type.url, method: .get)
        return API().run(request)
            .map(\.value)
            .eraseToAnyPublisher()
    }
}
