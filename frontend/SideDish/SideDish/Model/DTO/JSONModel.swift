
import Foundation

struct MenuResponse: Decodable {
    let categoryId: Int
    let name: String
    let items: [Menu]
}

struct OrderMenuRequest: Encodable {
    let orderCount: Int
}
