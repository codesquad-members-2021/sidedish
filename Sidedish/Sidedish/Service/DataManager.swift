//
//  DataManager.swift
//  Sidedish
//
//  Created by Issac on 2021/04/19.
//

import Foundation

class DataManager {
    func decoding<T: Decodable>(decodable: T.Type, data: Data, completion: @escaping (Result<T, Error>) -> Void) {
        let decoder = JSONDecoder()
        do {
            let decodeData = try decoder.decode(decodable, from: data)
            completion(.success(decodeData))
        } catch {
            completion(.failure(error))
        }
    }
    
    func encoding<T: Encodable>(encodable: T, completion: @escaping (Result<Data, Error>) -> Void) {
        let encoder = JSONEncoder()
        do {
            let encodeData = try encoder.encode(encodable)
            completion(.success(encodeData))
        } catch {
            completion(.failure(error))
        }
    }
    
    func parseData(of value: Any) -> Data {
        do {
            let data = try JSONSerialization.data(withJSONObject: value, options: .prettyPrinted)
            return data
        } catch {
            print(error.localizedDescription)
            return Data()
        }
    }
}
