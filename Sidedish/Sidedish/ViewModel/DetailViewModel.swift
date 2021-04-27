//
//  DetailViewModel.swift
//  Sidedish
//
//  Created by Issac on 2021/04/27.
//

import Foundation

class DetailViewModel {
    var sidedishProcessing: SidedishProcessable
    var currentDetail: DetailItem
    var detailHandler: (() -> ())?
    var errorHandler: ((String) -> ())?
    
    init(sidedishProcessable: SidedishProcessable) {
        self.sidedishProcessing = sidedishProcessable
        self.currentDetail = DetailItem()
    }
    
    func fetchDetail(hash: String) {
        let url = "https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/detail/\(hash)"
        self.sidedishProcessing.getDetail(url: url) { [weak self] (result) in
            switch result {
            case .success(let detailItem):
                guard let strongSelf = self else { return }
                strongSelf.currentDetail = detailItem
                strongSelf.detailHandler?()
            case .failure(let error):
                #if DEBUG
                NSLog(error.localizedDescription)
                #endif
                self?.errorHandler?(error.localizedDescription)
            }
        }
    }
    
}
