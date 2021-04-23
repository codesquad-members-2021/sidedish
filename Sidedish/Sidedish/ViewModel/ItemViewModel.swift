//
//  ItemViewModel.swift
//  Sidedish
//
//  Created by Issac on 2021/04/19.
//

import Foundation

class ItemViewModel {
    @Published var items: [SidedishItem]
    var images: [Data?]
    var imageReloadHandler: ((Int) -> ())?
    var errorHandler: ((String) -> ())?
    var sidedishProcessing: SidedishProcessing
    
    init() {
        self.items = [SidedishItem]()
        self.images = [Data?]()
        self.sidedishProcessing = SidedishProcessing()
    }
    
    func fetchItems() {
        let url = "https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/main"
        self.sidedishProcessing.getItems(url: url) { (result) in
            switch result {
            case .success(let sidedishItems):
                self.items = sidedishItems
                self.images = Array(repeating: nil, count: sidedishItems.count)
            case .failure(let error):
                #if DEBUG
                NSLog(error.localizedDescription)
                #endif
                self.errorHandler?(error.localizedDescription)
            }
        }
    }
    
    func fetchImage(index: Int, imageURL: String, completion: @escaping (() -> ())) {
        guard let url = URL(string: imageURL) else { return }
        DispatchQueue.global().async {
            self.sidedishProcessing.getImage(url: url) { (data) in
                self.images[index] = data
            }
        }
    }
}
