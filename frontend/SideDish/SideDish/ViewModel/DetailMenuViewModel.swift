
import Foundation

class DetailMenuViewModel {
    
    private(set) var thumbImages: [String]
    private(set) var title: String
    private(set) var productDescription: String
    private(set) var salePrice: NSAttributedString
    private(set) var normalPrice: NSAttributedString
    private(set) var badges: [Bool]
    private(set) var point: String
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
        self.normalPrice = NSMutableAttributedString(string: "")
        self.badges = []
        self.point = ""
        self.deliveryInfo = ""
        self.deliveryFee = ""
        self.stock = 0
        self.detailSection = []
    }
    
    func send(detailHash: String) {
        self.fetchDetailDataUseCase.loadDetailMenu(detailHash: detailHash) { data in
            self.configure(data: data)
            NotificationCenter.default.post(name: Notification.Name.fetchDetailMenu, object: self)
        }
    }
    // price 수정
    func configure(data: DetailMenu) {
        self.thumbImages = data.thumbImages
        self.title = data.title
        self.productDescription = data.productDescription
        self.salePrice = NSMutableAttributedString(string: convertDecimal(string: data.prices[0]))
        self.normalPrice = NSMutableAttributedString(string: convertDecimal(string: data.prices[0]))
        self.badges = verifyBadges(badges: data.badges)
        self.point = data.point
        self.deliveryInfo = data.deliveryInfo
        self.deliveryFee = data.deliveryFee
        self.stock = data.stock
        self.detailSection = data.detailSection
    }
    
//    func stringToAttributedString(_ price: String) -> NSAttributedString {
//        let priceArray = convertDecimal(string: price)
//
//        if priceArray.count == 1 {
//            resultStringArray.append(NSMutableAttributedString(string: "\(price[0])원"))
//        } else {
//            resultStringArray.append(NSMutableAttributedString(string: "\(price[0])원"))
//            let attributeString: NSMutableAttributedString =  NSMutableAttributedString(string: "\(price[1])원")
//            attributeString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 2, range: NSMakeRange(0, attributeString.length))
//            resultStringArray.append(attributeString)
//        }
//        
//        return resultStringArray
//    }
    
    func convertDecimal(string: String) -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        
        let stringToInt = Int(string)!
        return numberFormatter.string(from: NSNumber(value: stringToInt))!
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
