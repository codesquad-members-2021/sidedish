import UIKit

class FoodInfoStackView: UIStackView {
    
    var foodNameLabel: UILabel!
    var foodDescriptionLabel: UILabel!
    var sellPriceLabel: UILabel!
    var originalPriceLabel: UILabel?
    var eventInfoLabel: UILabel?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupMainView()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupMainView()
    }
    
    
}

//MARK: -Setup && Cofiguration
extension FoodInfoStackView {
    
    private func setupMainView() {
        configureMainView()
        configureFoodNameLabel()
        configureFoodDescriptionLabel()
        configureSellPriceLabel()
    }
    
    private func configureMainView() {
        axis = .vertical
        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalToConstant: 130).isActive = true
        widthAnchor.constraint(equalToConstant: 213).isActive = true
    }
    
    private func configureFoodNameLabel() {
        foodNameLabel = UILabel(frame: .zero)
        foodNameLabel.font = UIFont.boldSystemFont(ofSize: 16)
        foodNameLabel.numberOfLines = 0
        addArrangedSubview(foodNameLabel)
        foodNameLabel.translatesAutoresizingMaskIntoConstraints = false
        foodNameLabel.widthAnchor.constraint(equalToConstant: 205).isActive = true
        foodNameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        foodNameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
    }
    
    private func configureFoodDescriptionLabel() {
        foodDescriptionLabel = UILabel(frame: .zero)
        foodDescriptionLabel.textColor = UIColor.systemGray3
        foodDescriptionLabel.font = foodDescriptionLabel.font.withSize(14)
        addArrangedSubview(foodDescriptionLabel)
        foodDescriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        foodDescriptionLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        foodDescriptionLabel.widthAnchor.constraint(equalToConstant: 205).isActive = true
        foodDescriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
    }
    
    private func configureSellPriceLabel() {
        sellPriceLabel = UILabel(frame: .zero)
        sellPriceLabel.font = UIFont.boldSystemFont(ofSize: 14)
        addArrangedSubview(sellPriceLabel)
        sellPriceLabel.translatesAutoresizingMaskIntoConstraints = false
        sellPriceLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        sellPriceLabel.widthAnchor.constraint(equalToConstant: 51).isActive = true
        sellPriceLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
    }
}
