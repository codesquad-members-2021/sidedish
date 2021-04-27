//
//  BanchanDetailViewModel.swift
//  SideDish
//
//  Created by 심영민 on 2021/04/27.
//

import Foundation
import Combine

class BanchanDetailViewModel {
    
    private var fetchBanchanDetailUseCase: FetchBanchanDetailUseCase
    @Published var banchanDetail: BanchanDetail!
    private var hash: Int
    
    init(hash: Int, fetchBanchanDetailUseCase: FetchBanchanDetailUseCase) {
        self.hash = hash
        self.fetchBanchanDetailUseCase = fetchBanchanDetailUseCase
        fetchBanchanDetail()
    }
    
    func fetchBanchanDetail() {
        fetchBanchanDetailUseCase.execute(hash: hash) { (banchanDetail) in
            self.banchanDetail = banchanDetail
        }
    }
}
