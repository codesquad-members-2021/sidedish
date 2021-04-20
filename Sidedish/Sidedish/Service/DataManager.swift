//
//  DataManager.swift
//  Sidedish
//
//  Created by Issac on 2021/04/19.
//

import Foundation

class DataManager {
    func decoding<T: Decodable>(decodable: T.Type, data: Data, completion: @escaping (Result<T, RepositoryError>) -> Void) {
        let decoder = JSONDecoder()
        do {
            let decodeData = try decoder.decode(decodable, from: data)
            completion(.success(decodeData))
        } catch {
            NSLog(error.localizedDescription)
            completion(.failure(.decodeError))
        }
    }
    
    func encoding<T: Encodable>(encodable: T, completion: @escaping (Result<Data, RepositoryError>) -> Void) {
        let encoder = JSONEncoder()
        do {
            let encodeData = try encoder.encode(encodable)
            completion(.success(encodeData))
        } catch {
            NSLog(error.localizedDescription)
            completion(.failure(.encodeError))
        }
    }
    
    func parseData(of value: Any) -> Data {
        do {
            let data = try JSONSerialization.data(withJSONObject: value, options: .prettyPrinted)
            return data
        } catch {
            NSLog(error.localizedDescription)
            return Data()
        }
    }
}
