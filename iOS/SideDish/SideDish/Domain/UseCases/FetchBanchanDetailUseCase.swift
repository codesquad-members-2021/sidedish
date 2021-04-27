//
//  File.swift
//  SideDish
//
//  Created by 심영민 on 2021/04/27.
//

import Foundation
import Combine

protocol FetchBanchanDetailUseCase {
    func execute(hash: Int, completion: @escaping (BanchanDetail?)->Void)
}

class DefaultFetchBanchanDetailUseCase: FetchBanchanDetailUseCase {
    
    private let banchanDetailRepository: BanchanDetailRepository
    
    init(banchanDetailRepository: BanchanDetailRepository) {
        self.banchanDetailRepository = banchanDetailRepository
    }
    
    func execute(hash: Int, completion: @escaping (BanchanDetail?)->Void) {
        banchanDetailRepository.fetchBanchanDetail(hash: hash) { (banchanDetail) in
            completion(banchanDetail)
        }
    }
}
