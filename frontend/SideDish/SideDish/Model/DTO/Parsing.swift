//
//  Parsing.swift
//  SideDish
//
//  Created by sonjuhyeong on 2021/04/21.
//

import Foundation

class ParsingManager {
    
    static func encodeData<T: Encodable>(data: T) -> Data? {
        let encoder = JSONEncoder()
        do {
            return try encoder.encode(data)
        } catch {
            print("Encode error")
            return nil
        }
    }
    
    static func decodeData<T: Decodable>(type: T.Type, data: Data) -> T? {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        do {
            return try decoder.decode(type, from: data)
        } catch {
            print("Decode error")
            return nil
        }
    }
}
