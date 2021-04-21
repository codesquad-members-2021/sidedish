import UIKit

class EventInfoStackView: UIStackView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupMainView()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupMainView()
    }
    
    func launchingPriceLabel(label text: String) {
        let label = EventInfoBadge(frame: .zero)
        label.text = text
        label.backgroundColor = UIColor.blue
        addArrangedSubview(label)
    }
    
    func eventPriceLabel(label text: String) {
        let label = EventInfoBadge(frame: .zero)
        label.text = text
        label.backgroundColor = UIColor.systemGreen
        addArrangedSubview(label)
    }
}

extension EventInfoStackView {
    
    private func setupMainView() {
        configureMainView()
    }
    
    private func configureMainView() {
        axis = .horizontal
        spacing = 4
        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalToConstant: 25).isActive = true
    }
}
