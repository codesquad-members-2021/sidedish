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
    @IBOutlet weak var badgeBackgroundView: UIView!
    @IBOutlet weak var badgeLabel: UILabel!
    
    static let reuseIdentifier = String(describing: DishCell.self)
    let networkManager = NetworkManager()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        thumbnailImageView.layer.masksToBounds = true
        thumbnailImageView.layer.cornerRadius = 5.0
        
        badgeBackgroundView.layer.masksToBounds = true
        badgeBackgroundView.layer.cornerRadius = 5.0
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
            originalPriceLabel.attributedText = "\(originalPrice)원".strikethrough()
            lastPriceLabel.text = "\(lastPrice)원"
        } else {
            lastPriceLabel.text = "\(originalPrice)원"
            originalPriceLabel.text = ""
        }
        let badges = dish.badges
        if badges.count > 0 {
            badgeLabel.text = badges[0]
        }
    }
}
