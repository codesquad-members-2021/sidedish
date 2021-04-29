//
//  BanchanListViewModel.swift
//  SideDish
//
//  Created by 지북 on 2021/04/22.
//

import Foundation
import Combine

struct BanchanListViewModelAction {
    let showBanchanDetails: ((Banchan) -> Void)
}

class BanchanListViewModel {
    
    @Published var menu: [[Banchan]]
    private var fetchBanchanListUseCase: FetchBanchanListUseCase
    private var action: BanchanListViewModelAction
    
    init(fetchBanchanListUseCase: FetchBanchanListUseCase, action: BanchanListViewModelAction) {
        self.fetchBanchanListUseCase = fetchBanchanListUseCase
        self.menu = []
        self.action = action
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
    
    func didSelectedItem(indexPath: IndexPath) {
        let banchan = menu[indexPath.section][indexPath.row]
        action.showBanchanDetails(banchan)
    }
    
    func getBanchans(section: Section) -> [Banchan]? {
        return menu[section.rawValue]
    }
}

