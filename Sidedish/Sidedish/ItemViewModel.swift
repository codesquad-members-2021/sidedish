//
//  ItemViewModel.swift
//  Sidedish
//
//  Created by Issac on 2021/04/19.
//

import Foundation

class ItemViewModel {
    @Published var items: [SidedishItem]
    
    init() {
        self.items = [SidedishItem]()
    }
    
    func fetchItems() {
        self.items = [
            SidedishItem(detailHash: "HBBCC",
                         image: "http://public.codesquad.kr/jk/storeapp/data/fdb0d5fcfb86e332505785225a6d9ade.jpg",
                         alt: "[마샐미디쉬] 유자소스 연근무침 250g",
                         deliveryType: [
                            "새벽배송",
                            "전국택배"
                        ],
                         title: "[마샐미디쉬] 유자소스 연근무침 250g",
                         description: "향긋한 유자향과 아삭한 연근",
                         nPrice: nil,
                         sPrice: "6,500원",
                         badge: nil)
        ]
    }
}
