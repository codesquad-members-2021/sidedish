//
//  FetchBanchanListUseCase.swift
//  SideDish
//
//  Created by 지북 on 2021/04/21.
//

import Foundation

struct FetchBanchanListUseCase {
    private static let url: String = "https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/side"
    
    static func fetchBanchanList(network: NetworkRequest, completion: @escaping ([Banchan]?) -> Void) {
        network.request(url: self.url, httpMethod: .get) { dataDummy in
            guard let data = dataDummy.data else { return }
            
            guard let banchans = try? JSONDecoder().decode(BanchanListDTO.self, from: data) else { return }
            completion(banchans.toDomain())
        }
    }
}
