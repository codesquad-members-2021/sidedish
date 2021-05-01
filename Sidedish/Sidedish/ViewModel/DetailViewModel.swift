//
//  DetailViewModel.swift
//  Sidedish
//
//  Created by Issac on 2021/04/27.
//

import Foundation

class DetailViewModel: ObservableObject {
    var sidedishProcessing: SidedishProcessable
    var currentDetail: DetailItem
    var currentItemBadge: [Bool]
    var currentItemTitle: String
    var setTitleHandler: ((String) -> ())?
    var setThumbnailHandler: (() -> ())?
    var setInformationHandler: (() -> ())?
    var imageFetchHandler: (() -> ())?
    var detailImageFetchHandler: (() -> ())?
    var errorHandler: ((String) -> ())?
    var quantity: Int = 1
    
    init(sidedishProcessable: SidedishProcessable, title: String, badges: [Bool]) {
        self.sidedishProcessing = sidedishProcessable
        self.currentDetail = DetailItem()
        self.currentItemTitle = title
        self.currentItemBadge = badges
    }
        
    func fetchDetail(hash: String) {
        let url = "https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/detail/\(hash)"
        self.sidedishProcessing.getDetail(url: url) { [weak self] (result) in
            switch result {
            case .success(let detailItem):
                guard let strongSelf = self else { return }
                strongSelf.resetDetailItem(detailItem)
            case .failure(let error):
                #if DEBUG
                NSLog(error.localizedDescription)
                #endif
                self?.errorHandler?(error.localizedDescription)
            }
        }
    }
    
    private func resetDetailItem(_ detailItem: DetailItem) {
        self.currentDetail = detailItem
        self.triggerTitleHandler()
        self.triggerImageHandler()
        self.triggerInformationHandler()
    }
    
    private func triggerTitleHandler() {
        self.setTitleHandler?(self.currentItemTitle)
    }
    
    private func triggerImageHandler() {
        self.imageFetchHandler?()
    }
    
    private func triggerInformationHandler() {
        self.setInformationHandler?()
    }
}
