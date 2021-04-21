import UIKit

class PriceStackView: UIStackView {
    
    var normalPriceLabel: UILabel!
    var eventPriceLabel: UILabel?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupMainView()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupMainView()
    }
    

}

extension PriceStackView {
    
    private func setupMainView() {
        configureMainStackView()
        configureNormalPriceLabel()
        configureEventPriceLabel()
    }
    
    private func configureMainStackView() {
        axis = .horizontal
        spacing = 4
        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
    
    private func configureNormalPriceLabel() {
        normalPriceLabel = UILabel(frame: .zero)
        normalPriceLabel.font = UIFont.boldSystemFont(ofSize: 14)
        addArrangedSubview(normalPriceLabel)
        normalPriceLabel.translatesAutoresizingMaskIntoConstraints = false
        normalPriceLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        normalPriceLabel.widthAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    private func configureEventPriceLabel() {
        eventPriceLabel = UILabel(frame: .zero)
        eventPriceLabel?.font = eventPriceLabel?.font.withSize(14)
        eventPriceLabel?.textColor = UIColor.systemGray2
        guard let eventPriceLabel = eventPriceLabel else { return }
        addArrangedSubview(eventPriceLabel)
        eventPriceLabel.translatesAutoresizingMaskIntoConstraints = false
        eventPriceLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
}
