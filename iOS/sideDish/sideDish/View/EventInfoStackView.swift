import UIKit

class EventInfoStackView: UIStackView {
    
    var firstEventLabel: UILabel?
    var secondeEventLabel: UILabel?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
    }
}
