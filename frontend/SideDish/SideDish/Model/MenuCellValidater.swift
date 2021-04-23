
import Foundation

class MenuCellValidater {
    
    func validate(pastPrice: String?) -> NSMutableAttributedString {
        if let pastPrice = pastPrice {
            let attributeString: NSMutableAttributedString =  NSMutableAttributedString(string: "\(pastPrice)원")
            attributeString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 2, range: NSMakeRange(0, attributeString.length))
            return attributeString
        } else {
            return NSMutableAttributedString(string: "")
        }
    }
    
}
