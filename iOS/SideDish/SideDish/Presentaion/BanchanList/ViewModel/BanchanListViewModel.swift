//
//  BanchanListViewModel.swift
//  SideDish
//
//  Created by 지북 on 2021/04/22.
//

import Foundation
import Combine

class BanchanListViewModel {
    enum Section: Int, CaseIterable{
        case main = 0
        case soup, side
        
        func description() -> String {
            switch self {
            case .main:
                return "모두가 좋아하는 든든한 메인요리"
            case .soup:
                return  "정성이 담긴 뜨끈뜨끈 국물요리"
            case .side:
                return "식탁을 풍성하게 하는 정갈한 밑반찬"
            }
        }
    }
    
    @Published var menu: Dictionary<Section, [Banchan]>
    private let baseURL = "http://ec2-54-180-115-20.ap-northeast-2.compute.amazonaws.com:8080/"
    
    private var network = NetworkSerivce.shared
    
    init() {
        self.menu = [:]
        fetchMenu()
    }
    
    func count(section: Section) -> Int {
        return menu[section]?.count ?? 0
    }
    
    func fetchMenu() {
        FetchBanchanListUseCase.fetchBanchanList(network: network, baseURL: baseURL, section: "main", completion: { banchans in
            guard let banchans = banchans else { return }
            self.menu[.main] = banchans
        })
        
        FetchBanchanListUseCase.fetchBanchanList(network: network, baseURL: baseURL, section: "soup", completion: { banchans in
            guard let banchans = banchans else { return }
            self.menu[.soup] = banchans
        })
        
        FetchBanchanListUseCase.fetchBanchanList(network: network, baseURL: baseURL, section: "side", completion: { banchans in
            guard let banchans = banchans else { return }
            self.menu[.side] = banchans
        })
    }
    
    func getBanchans(section: Section) -> [Banchan]? {
        return menu[section]
    }
}

