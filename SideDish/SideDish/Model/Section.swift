//
//  Section.swift
//  SideDish
//
//  Created by 박혜원 on 2021/04/20.
//

import Foundation
import Combine

class Section : Hashable {
    
    let title : String
    @Published var cards : [Card]
    private var cancellables = Set<AnyCancellable>()
    
    init(title : String, cards : [Card]) {
        self.title = title
        self.cards = cards
    }
    func hash(into hasher: inout Hasher) {
        hasher.combine(title)
    }
    static func == (lhs: Section, rhs : Section) -> Bool {
        lhs.title == rhs.title
    }
}
extension Section {
    static let didCardInSectionChanged = Notification.Name("didCardInSectionChanged")
}
extension Section {
    static var allSections: [Section] = [
        Section(title: "모두가 좋아하는 든든한 메인요리",
                cards: [Card]()),
        Section(title: "정성이 담긴 뜨끈뜨끈 국물요리",
                cards: [Card]()),
        Section(title: "식탁을 풍성하게 하는 정갈한 밑반찬",
                cards: [Card]()),
    ]
    func loadCards(type : EndPoint?){
        guard let type = type else { return }
        CardAPI.loadDish(type: type)
            .sink(receiveCompletion: { _ in},
                  receiveValue: { self.cards = $0.getCards() })
            .store(in: &cancellables)
    }
}
