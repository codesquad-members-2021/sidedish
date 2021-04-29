
import Foundation

struct MenuResponse: Decodable {
    let statusCode: Int
    let body: [Menu]
}
