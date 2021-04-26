//
//  AFRequestManagable.swift
//  sidedish
//
//  Created by Song on 2021/04/25.
//

import Foundation
import Alamofire

protocol AFRequestManagable {
    
    func AFRequest(for method: HTTPMethod, endPoint: String, parameters: [String: Any]?) -> DataRequest
    
}
