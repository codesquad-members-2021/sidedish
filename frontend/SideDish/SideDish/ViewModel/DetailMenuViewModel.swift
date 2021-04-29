
import Foundation

class DetailMenuViewModel {
    
    private(set) var thumbImages: [String]
    private(set) var title: String
    private(set) var productDescription: String
    private(set) var salePrice: NSAttributedString
    private(set) var normalPrice: String
    private(set) var badges: [Bool]
    private(set) var point: Int
    private(set) var deliveryInfo: String
    private(set) var deliveryFee: String
    private(set) var stock: Int
    private(set) var detailSection: [String]
    
    private let fetchDetailDataUseCase = FetchDetailDataUseCase()
    
    init() {
        self.thumbImages = []
        self.title = ""
        self.productDescription = ""
        self.salePrice = NSMutableAttributedString(string: "")
        self.normalPrice = ""
        self.badges = []
        self.point = 0
        self.deliveryInfo = ""
        self.deliveryFee = ""
        self.stock = 0
        self.detailSection = []
    }
    
    func send(categoryId: Int, detailHash: String) {
        self.fetchDetailDataUseCase.loadDetailMenu(categoryId: categoryId, detailHash: detailHash) { data in
            self.configure(data: data)
            NotificationCenter.default.post(name: Notification.Name.fetchDetailMenu, object: self)
        }
    }
    // price 수정
    func configure(data: DetailMenu) {
        self.thumbImages = data.thumbImages
        self.title = data.title
        self.productDescription = data.productDescription
        self.salePrice = stringToAttributedString(data.prices)
        self.normalPrice = "\(convertDecimal(string: data.prices[0]))원"
        self.badges = verifyBadges(badges: data.badge != [nil] ? data.badge.map() { $0! } : [])
        self.point = data.point
        self.deliveryInfo = data.deliveryInfo
        self.deliveryFee = data.deliveryFee
        self.stock = data.stock
        self.detailSection = data.detailSection
    }
    
    func stringToAttributedString(_ prices: [String]) -> NSAttributedString {
        if prices.count == 2 {
            let convertedPrice = convertDecimal(string: prices[1])
            let attributeString: NSMutableAttributedString =  NSMutableAttributedString(string: "\(convertedPrice)원")
            attributeString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 2, range: NSMakeRange(0, attributeString.length))
            return attributeString
        } else {
            return NSAttributedString(string: "")
        }
    }
    
    func convertDecimal(string: String) -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        
        let stringToInt = Int(string)!
        return numberFormatter.string(from: NSNumber(value: stringToInt))!
    }
    
    func normalPriceToInt() -> Int {
        return Int(self.normalPrice.components(separatedBy: [",", "원"]).joined())!        
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
