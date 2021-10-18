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
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        thumbnailImageView.layer.masksToBounds = true
        thumbnailImageView.layer.cornerRadius = 5.0
    }
    
    func fill(with viewModel: DishesItemViewModel) {
        let dish = viewModel.dish
        nameLabel.text = dish.name
        descriptionLabel.text = dish.description
        
        lastPriceLabel.text = String().format(price: viewModel.lastPrice)
        if let originalPrice = viewModel.originalPrice {
            originalPriceLabel.attributedText = String().format(price: originalPrice)?.strikethrough()
            originalPriceLabel.isHidden = false
        } else {
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
                let badgeView = BadgeView()
                badgeView.badgeLabel.text = badgeString
                badgeView.backgroundColor = badgeString == "이벤트특가" ? #colorLiteral(red: 0.5098039216, green: 0.8274509804, blue: 0.1764705882, alpha: 1) : #colorLiteral(red: 0.5254901961, green: 0.7764705882, blue: 1, alpha: 1)
                badgeStackView.addArrangedSubview(badgeView)
            }
        }
    }
    
    override func prepareForReuse() {
        thumbnailImageView.image = nil
    }
}
