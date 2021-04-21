//
//  JsonManager.swift
//  sidedish
//
//  Created by Song on 2021/04/21.
//

import Foundation

class JsonManager {
    
    func encode<T: Encodable>(data: T) -> Data? {
        let encoder = JSONEncoder()
        do {
            return try encoder.encode(data)
        } catch {
            return nil
        }
    }
    
    func decode<T: Decodable>(type: T.Type, data: Data) -> T? {
        let decoder = JSONDecoder()
        do {
            return try decoder.decode(type, from: data)
        } catch {
            return nil
        }
    }

}
