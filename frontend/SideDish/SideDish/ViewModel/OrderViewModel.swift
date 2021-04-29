
import Foundation

class OrderViewModel {
    
    private var orderCount: Int
    private var detailHash: String
    
    init() {
        self.orderCount = 1
        self.detailHash = ""
    }
    
    func increaseOrderCount() {
        self.orderCount += 1
    }
    
    func decreaseOrderCount() {
        if self.orderCount > 0 {
            self.orderCount -= 1
        } else {
            self.orderCount = 0
        }
    }
    
    func orderProduct(detailHash: String)  {
        self.detailHash = detailHash
    }
    
}
