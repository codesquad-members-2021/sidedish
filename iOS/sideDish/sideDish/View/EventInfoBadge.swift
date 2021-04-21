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
    
}

extension EventInfoBadge {
    
    private func setupMainView() {
        font = UIFont.boldSystemFont(ofSize: 12)
        textColor = UIColor.white
        textAlignment = NSTextAlignment.center
        configureMainView()
    }
    
    private func configureMainView() {
        numberOfLines = 0
        adjustsFontSizeToFitWidth = true
        translatesAutoresizingMaskIntoConstraints = false
        layer.masksToBounds = true
        layer.cornerRadius = 8
    }
}
