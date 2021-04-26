import UIKit

class EventInfoBadge: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupMainView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupMainView()
    }
    
    override func drawText(in rect: CGRect) {
        let insets = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
        super.drawText(in: rect.inset(by: insets))
    }
    
}

extension EventInfoBadge {
    
    private func setupMainView() {
        font = UIFont.boldSystemFont(ofSize: 12)
        textColor = UIColor.white
        textAlignment = NSTextAlignment.center
        configureMainView()
    }
    
    private func configureMainView() {
        adjustsFontSizeToFitWidth = true
        translatesAutoresizingMaskIntoConstraints = false
        layer.masksToBounds = true
        layer.cornerRadius = 8
    }
}
