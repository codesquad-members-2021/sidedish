
import Foundation

class MenuViewModel {
    private(set) var image: String
    private(set) var title: String
    private(set) var body: String
    private(set) var s_price: String
    private(set) var n_price: NSAttributedString
    private(set) var badges: [String]
    
    init() {
        self.image = ""
        self.title = ""
        self.body = ""
        self.s_price = ""
        self.n_price = NSAttributedString(string: "")
        self.badges = []
    }
    
    func configure(image: String, title: String, body: String, s_price: String, n_price: NSAttributedString, badges: [String]) {
        self.image = image
        self.title = title
        self.body = body
        self.s_price = s_price
        self.n_price = n_price
        self.badges = badges
    }
}

extension MenuViewModel: Hashable, Equatable {
    static func == (lhs: MenuViewModel, rhs: MenuViewModel) -> Bool {
        return lhs.image == rhs.image || lhs.title == rhs.title || lhs.body == rhs.body ||
            lhs.n_price == rhs.n_price || lhs.s_price == rhs.s_price || lhs.badges == rhs.badges
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(image)
        hasher.combine(title)
        hasher.combine(body)
        hasher.combine(n_price)
        hasher.combine(s_price)
        hasher.combine(badges)
    }
}
