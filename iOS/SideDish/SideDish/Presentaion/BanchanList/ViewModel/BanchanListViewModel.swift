//
//  BanchanListViewModel.swift
//  SideDish
//
//  Created by 지북 on 2021/04/20.
//

import Foundation
import UIKit

class BanchanListViewModel {
    enum Section: String, CaseIterable {
        case soup = "정성이 담긴 뜨끈뜨끈 국물요리"
        case side = "식탁을 풍성하게 하는 정갈한 밑반찬"
        case main = "모두가 좋아하는 든든한 메인요리"
    }
    
    var menu: Dictionary<Section, [Banchan]>
    
    init() {
        self.menu = [:]
    }
    
    func sectionCount() -> Int {
        return Section.allCases.count
    }
    
    func getBanchans(section: Section) -> [Banchan]? {
        return menu[section]
    }
}
