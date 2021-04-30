
import Foundation

class URLManager {
    
    enum Url: String {
        case main = "http://13.209.36.131:8080/17011000"
        case soup = "http://13.209.36.131:8080/17011100"
        case side = "http://13.209.36.131:8080/17011200"
        case detail = "http://13.209.36.131:8080/detail"
    }
    
    static func menu(of url: Url) -> URL? {
        guard let url = URL(string: url.rawValue) else {
            print("The URL is inappropriate.")
            return nil
        }
        return url
    }
    
    static func detailMenu(categoryId: Int, detailHash: String) -> URL? {
        guard let url = URL(string: "\(Url.detail.rawValue)/\(categoryId)/\(detailHash)") else {
            print("The URL is inappropriate.")
            return nil
        }
        return url
    }
}
