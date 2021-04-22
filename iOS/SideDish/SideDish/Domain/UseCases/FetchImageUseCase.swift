//
//  FetchImageUseCase.swift
//  AlamofirePratice
//
//  Created by 지북 on 2021/04/21.
//

import Foundation

struct FetchImageUseCase {
    static func fetch(network: NetworkRequest, imgURL: String, completion: @escaping (Data?) -> Void) {
        network.request(url: imgURL, httpMethod: .get) { dataDummy in
            let data = dataDummy.data
            completion(data)
        }
    }
}
