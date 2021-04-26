
import Foundation

struct GetMenu: Codable {
    let statusCode: Int
    let body: [Menu]
}

struct viewmodel {
    var url: String
    var title: String
    var body: String
    var n_price: NSAttributedString
    var s_price: String
    var badge: [String]?
}
