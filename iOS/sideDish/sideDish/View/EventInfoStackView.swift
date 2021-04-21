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
        label.backgroundColor = UIColor(red: 134/255, green: 198/255, blue: 255/255, alpha: 1)
        addArrangedSubview(label)
    }
    
    func eventPriceLabel(label text: String) {
        let label = EventInfoBadge(frame: .zero)
        label.text = text
        label.backgroundColor = UIColor(red: 130/255, green: 211/255, blue: 45/255, alpha: 1)
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
