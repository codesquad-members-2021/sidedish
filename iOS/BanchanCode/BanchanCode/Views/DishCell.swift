//
//  DishCell.swift
//  BanchanCode
//
//  Created by Song on 2021/04/20.
//

import UIKit

class DishCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var discountPriceLabel: UILabel!
    @IBOutlet weak var originalPriceLabel: UILabel!
    @IBOutlet weak var badgeBackgroundView: UIView!
    @IBOutlet weak var badgeLabel: UILabel!
    
    static let identifier = "DishCell"
    var viewModel: DishesListItemViewModel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        thumbnailImageView.layer.masksToBounds = true
        thumbnailImageView.layer.cornerRadius = 5.0
        
        badgeBackgroundView.layer.masksToBounds = true
        badgeBackgroundView.layer.cornerRadius = 5.0
    }
    
    func fill(with viewModel: DishesListItemViewModel) {
        self.viewModel = viewModel
        
        updateThumbImage()
        nameLabel.text = viewModel.name
        descriptionLabel.text = viewModel.description
        let prices = viewModel.prices
        let originalPrice = prices[0]
        if prices.count > 1 {
            let discountPrice = prices[1]
            originalPriceLabel.attributedText = "\(originalPrice)원".strikethrough()
            discountPriceLabel.text = "\(discountPrice)원"
        } else {
            discountPriceLabel.text = "\(originalPrice)원"
            originalPriceLabel.text = ""
        }
        let badges = viewModel.badges
        if badges.count > 0 {
            badgeLabel.text = badges[0]
        }
    }
    
    func updateThumbImage() {
        thumbnailImageView.image = nil
        
        guard let dishImageUrl = URL(string: viewModel.imageURL) else { return }
        guard let dishImageData = try? Data(contentsOf: dishImageUrl) else { return }
        let dishImage = UIImage(data: dishImageData)
        thumbnailImageView.image = dishImage
    }
}
