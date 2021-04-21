//
//  ItemCollectionViewCell.swift
//  Sidedish
//
//  Created by Ador on 2021/04/19.
//

import UIKit

class ItemCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "ItemCollectionViewCell"
    
    @IBOutlet weak var dishImage: UIImageView!
    @IBOutlet weak var dishName: UILabel!
    @IBOutlet weak var dishDescription: UILabel!
    @IBOutlet weak var sellingPrice: UILabel!
    @IBOutlet weak var originalPrice: UILabel!
    @IBOutlet var badges: [UILabel]!
    
    func configure(model: SidedishItem) {
        dishName.text = model.title
        dishDescription.text = model.description
        sellingPrice.text = model.sPrice
    }
    
    func configure(image: UIImage) {
        dishImage.image = image
    }
}
