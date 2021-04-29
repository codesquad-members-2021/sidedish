//
//  DishCell.swift
//  BanchanCode
//
//  Created by Song on 2021/04/20.
//

import UIKit
import Alamofire

class DishCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var lastPriceLabel: UILabel!
    @IBOutlet weak var originalPriceLabel: UILabel!
    @IBOutlet weak var badgeStackView: UIStackView!
    
    static let reuseIdentifier = String(describing: DishCell.self)
    let networkManager = NetworkManager()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        thumbnailImageView.layer.masksToBounds = true
        thumbnailImageView.layer.cornerRadius = 5.0
    }
    
    func fill(with viewModel: DishesItemViewModel) {
        let dish = viewModel.dish
        networkManager.updateThumbImage(imageURL: dish.imageURL) { imageData in
            DispatchQueue.main.async {
                self.thumbnailImageView.image = UIImage(data: imageData)
            }
        }
        nameLabel.text = dish.name
        descriptionLabel.text = dish.description
        
        let prices = dish.prices
        let originalPrice = prices[0]
        if prices.count > 1 {
            let lastPrice = prices[1]
            lastPriceLabel.text = "\(lastPrice)원"
            originalPriceLabel.isHidden = false
            originalPriceLabel.attributedText = "\(originalPrice)원".strikethrough()
        } else {
            lastPriceLabel.text = "\(originalPrice)원"
            originalPriceLabel.isHidden = true
        }
        let badges = dish.badges
        badgeStackView.arrangedSubviews.forEach { subview in
            subview.removeFromSuperview()
        }
        if badges.count == 0 {
            badgeStackView.isHidden = true
        } else {
            badgeStackView.isHidden = false
            badges.forEach { badgeString in
                let badgeView = createBadgeView(with: badgeString)
                badgeStackView.addArrangedSubview(badgeView)
            }
        }
    }
    
    private func createBadgeView(with text: String) -> UIView {
        let badgeBackgroundView = UIView(frame: CGRect.zero)
        badgeBackgroundView.backgroundColor = text == "이벤트특가" ? #colorLiteral(red: 0.5098039216, green: 0.8274509804, blue: 0.1764705882, alpha: 1) : #colorLiteral(red: 0.5254901961, green: 0.7764705882, blue: 1, alpha: 1)
        badgeBackgroundView.layer.masksToBounds = true
        badgeBackgroundView.layer.cornerRadius = 5.0
        badgeBackgroundView.translatesAutoresizingMaskIntoConstraints = false
        
        let badgeLabel = createBadgeLabel(with: text)
        badgeBackgroundView.addSubview(badgeLabel)
        
        badgeLabel.centerXAnchor.constraint(equalTo: badgeBackgroundView.centerXAnchor).isActive = true
        badgeBackgroundView.leadingAnchor.constraint(equalTo: badgeLabel.leadingAnchor, constant: -8.0).isActive = true
        badgeBackgroundView.trailingAnchor.constraint(equalTo: badgeLabel.trailingAnchor, constant: 8.0).isActive = true
        badgeLabel.centerYAnchor.constraint(equalTo: badgeBackgroundView.centerYAnchor).isActive = true
        return badgeBackgroundView
    }
    
    private func createBadgeLabel(with text: String) -> UILabel {
        let badgeLabel = UILabel(frame: CGRect.zero)
        badgeLabel.font = UIFont.systemFont(ofSize: 12.0, weight: .bold)
        badgeLabel.textColor = .white
        badgeLabel.text = text
        badgeLabel.translatesAutoresizingMaskIntoConstraints = false
        return badgeLabel
    }
}
