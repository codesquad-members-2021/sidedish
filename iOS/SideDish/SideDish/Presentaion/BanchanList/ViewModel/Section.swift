//
//  Section.swift
//  SideDish
//
//  Created by 심영민 on 2021/04/21.
//

import UIKit

class Section: Hashable {
    enum SectionTitle: String {
        case main = "모두가 좋아하는 든든한 메인요리"
        case soup = "정성이 담긴 뜨끈뜨끈 국물요리"
        case side = "식탁을 풍성하게 하는 정갈한 밑반찬"
    }
    var id = UUID()
    var banchans: [Banchan]
    var title: SectionTitle
    
    init(title: SectionTitle, banchans: [Banchan]) {
        self.title = title
        self.banchans = banchans
    }
    static func == (lhs: Section, rhs: Section) -> Bool {
        return lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

extension Section {
    static var allSections: [Section] = [

        Section(title: .main, banchans: [Banchan(hash: "1", image: "https://pbs.twimg.com/profile_images/770139154898382848/ndFg-IDH.jpg", alt: "alt", title: "타이틀", description: "데스크립션", netPrice: "1000", salePrice: "1000", badge: [], delivery_type: [])]),
        Section(title: .soup, banchans: [Banchan(hash: "2", image:  "https://pbs.twimg.com/profile_images/770139154898382848/ndFg-IDH.jpg", alt: "alt", title: "타이틀", description: "데스크립션", netPrice: "1000", salePrice: "1000", badge: [], delivery_type: [])]),
        Section(title: .side, banchans: [Banchan(hash: "3", image:  "https://pbs.twimg.com/profile_images/770139154898382848/ndFg-IDH.jpg", alt: "alt", title: "타이틀", description: "데스크립션", netPrice: "1000", salePrice: "1000", badge: [], delivery_type: [])])
    ]
}
