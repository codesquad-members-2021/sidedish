
import Foundation

class DetailMenuViewModel {
    
    private var thumbImages: [String]
    private var productDescription: String
    private var point: String
    private var deliveryInfo: String
    private var deliveryFee: String
    private var prices: [String]
    private var detailSection: [String]
    
    init(thumbImages: [String], productDescription: String, point: String, deliveryInfo: String, deliveryFee: String, prices: [String], detailSection: [String]) {
        self.thumbImages = thumbImages
        self.productDescription = productDescription
        self.point = point
        self.deliveryInfo = deliveryInfo
        self.deliveryFee = deliveryFee
        self.prices = prices
        self.detailSection = detailSection
    }
}
