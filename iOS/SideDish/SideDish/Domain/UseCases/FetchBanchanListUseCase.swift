//
//  FetchBanchanListUseCase.swift
//  SideDish
//
//  Created by 지북 on 2021/04/21.
//

import Foundation

struct FetchBanchanListUseCase {
    private static let baseURL: String = "https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/"
    
    static func fetchBanchanList(network: NetworkRequest,section: String, completion: @escaping ([Banchan]?) -> Void) {
        let url = baseURL+section
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        network.request(url: url, httpMethod: .get) { dataDummy in
            guard let data = dataDummy.data else { return }
            
            guard let banchans = try? decoder.decode(BanchanListDTO.self, from: data) else { return }
            completion(banchans.toDomain())
        }
    }
}
