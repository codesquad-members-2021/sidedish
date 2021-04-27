
import Foundation

class MenuViewModel {
    private(set) var hash: String
    private(set) var image: String
    private(set) var title: String
    private(set) var body: String
    private(set) var sPrice: String
    private(set) var nPrice: NSAttributedString
    private(set) var badges: [String]
    
    init(hash: String, image: String, title: String, body: String, sPrice: String, nPrice: NSAttributedString, badges: [String]) {
        self.hash = hash
        self.image = image
        self.title = title
        self.body = body
        self.sPrice = sPrice
        self.nPrice = nPrice
        self.badges = badges
    }
    
    func verifyBadges(badges: [String]) -> [Bool] {
        switch badges {
        case ["이벤트특가"]:
            return [true, false]
        case ["론칭특가"]:
            return [false, true]
        case ["이벤트특가","론칭특가"]:
            return [true, true]
        case ["론칭특가","이벤트특가"]:
            return [true, true]
        default:
            return [false, false]
        }
    }
}

extension MenuViewModel: Hashable, Equatable {
    static func == (lhs: MenuViewModel, rhs: MenuViewModel) -> Bool {
        return lhs.image == rhs.image || lhs.title == rhs.title || lhs.body == rhs.body ||
            lhs.nPrice == rhs.nPrice || lhs.sPrice == rhs.sPrice || lhs.badges == rhs.badges
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(image)
        hasher.combine(title)
        hasher.combine(body)
        hasher.combine(nPrice)
        hasher.combine(sPrice)
        hasher.combine(badges)
    }
}
