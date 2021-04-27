//
//  BanchanListViewModel.swift
//  SideDish
//
//  Created by 지북 on 2021/04/22.
//

import Foundation
import Combine

class BanchanListViewModel {
    
    @Published var menu: [[Banchan]]
    private var fetchBanchanListUseCase: FetchBanchanListUseCase
    
    init(fetchBanchanListUseCase: FetchBanchanListUseCase) {
        self.fetchBanchanListUseCase = fetchBanchanListUseCase
        self.menu = []
        configureMenu()
        fetchMenu()
    }
    
    func count(section: Section) -> Int {
        return menu[section.rawValue].count
    }
    
    func fetchMenu() {
        Section.allCases.forEach { (section) in
            fetchBanchanListUseCase.execute(section: section) { (banchans) in
                self.menu[section.rawValue] = banchans ?? []
            }
        }
    }
    
    func configureMenu() {
        Section.allCases.forEach({ _ in
            menu.append([])
        })
    }
    
    func getBanchans(section: Section) -> [Banchan]? {
        return menu[section.rawValue]
    }
}

