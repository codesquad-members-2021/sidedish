//
//  FetchBanchanListUseCase.swift
//  SideDish
//
//  Created by 지북 on 2021/04/21.
//

import Combine

protocol FetchBanchanListUseCase {
    func execute(section: Section, completion: @escaping ([Banchan]?)->Void)
}

class DefaultFetchBanchanListUseCase: FetchBanchanListUseCase {
    
    private let banchanListRepository: BanchanListRepository
    
    init(banchanListRepository: BanchanListRepository) {
        self.banchanListRepository = banchanListRepository
    }
    
    func execute(section: Section, completion: @escaping ([Banchan]?)->Void) {
        banchanListRepository.fetchBanchanList(section: section) { (banchans) in
            completion(banchans)
        }
    }
}
