//
//  JSONParser.swift
//  BanchanCode
//
//  Created by Song on 2021/04/21.
//

import Foundation

class JSONManager {
    static func encode<T: Encodable>(_ object: T) -> Data? {
        return try? JSONEncoder().encode(object)
    }
    
    static func decode<T: Decodable>(_ jsonData: Data, into type: T.Type) -> T? {
        return try? JSONDecoder().decode(type, from: jsonData)
    }
}
