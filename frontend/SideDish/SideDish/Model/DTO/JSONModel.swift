
import Foundation

struct MenuResponse: Decodable {
    let statusCode: Int
    let body: [Menu]
}

struct DetailMenuResponse: Decodable {
    let hash: String
    let data: [DetailMenu]
}
