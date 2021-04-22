import UIKit

class EventInfoStackView: UIStackView {
    
    var eventPriceLabel: EventInfoBadge?
    var launchingPriceLabel: EventInfoBadge?
    private var peddingView: UIView?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupMainView()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupMainView()
    }
}

extension EventInfoStackView {
    
    private func setupMainView() {
        configureMainView()
        configureEventPriceLabel()
        configureLaunchingPriceLabel()
    }
    
    private func configureMainView() {
        axis = .horizontal
        spacing = 4
        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalToConstant: 25).isActive = true
    }
    
    private func configureEventPriceLabel() {
        eventPriceLabel = EventInfoBadge(frame: .zero)
        eventPriceLabel?.backgroundColor = UIColor(red: 130/255, green: 211/255, blue: 45/255, alpha: 1)
        guard let priceLabel = eventPriceLabel else { return }
        addArrangedSubview(priceLabel)
        peddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 25))
        addArrangedSubview(peddingView!)
    }
    
    private func configureLaunchingPriceLabel() {
        launchingPriceLabel = EventInfoBadge(frame: .zero)
        launchingPriceLabel?.backgroundColor = UIColor(red: 134/255, green: 198/255, blue: 255/255, alpha: 1)
        guard let priceLabel = launchingPriceLabel else { return }
        addArrangedSubview(priceLabel)
        peddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 25))
        addArrangedSubview(peddingView!)
    }
}
