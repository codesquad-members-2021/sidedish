//
//  ItemViewModel.swift
//  Sidedish
//
//  Created by Issac on 2021/04/19.
//

import Foundation

class ItemViewModel {
    var items: Dictionary<String, [SidedishItem]>
    var imageReloadHandler: ((Int) -> ())?
    var errorHandler: ((String) -> ())?
    var reloadHandler: ((Category) -> ())?
    var sidedishProcessing: SidedishProcessable
    
    init(sidedishProcessable: SidedishProcessable) {
        self.items = Dictionary<String, [SidedishItem]>()
        self.sidedishProcessing = sidedishProcessable
    }
    
    func fetchItems(of category: Category) {
        let url = "https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/\(category)"
        self.sidedishProcessing.getItems(url: url) { [weak self] (result) in
            switch result {
            case .success(let sidedishItems):
                guard let strongSelf = self else { return }
                let items = strongSelf.setOriginalPrice(items: sidedishItems)
                strongSelf.items[category.description, default: [SidedishItem]()] = items
                strongSelf.reloadHandler?(category)
            case .failure(let error):
                #if DEBUG
                NSLog(error.localizedDescription)
                #endif
                self?.errorHandler?(error.localizedDescription)
            }
        }
    }
    
    func setOriginalPrice(items: [SidedishItem]) -> [SidedishItem] {
        var processedItems = items
        processedItems.enumerated().forEach { (index, item) in
            let priceString = item.nPrice == nil ? "" : "\(item.nPrice ?? "")원"
            processedItems[index].nPrice = priceString
        }
        return processedItems
    }
}
