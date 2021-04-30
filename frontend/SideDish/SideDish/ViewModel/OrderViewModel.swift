
import Foundation

class OrderViewModel {
    
    private(set) var orderCount: Int
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
    
    func isOrderAvailable(stock: Int) -> Bool {
        return stock >= self.orderCount
    }
}
