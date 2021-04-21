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
        textAlignment = .center
        configureMainView()
    }
    
    private func configureMainView() {
        numberOfLines = 1
        translatesAutoresizingMaskIntoConstraints = false
        widthAnchor.constraint(equalToConstant: 53).isActive = true
        layer.masksToBounds = true
        layer.cornerRadius = 8
    }
}
