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
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        thumbnailImageView.backgroundColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        nameLabel.text = "Jackson!!!!"
    }

}
