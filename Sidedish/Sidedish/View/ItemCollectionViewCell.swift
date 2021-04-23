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
    @IBOutlet weak var eventBadge: UILabel!
    @IBOutlet weak var launchBadge: UILabel!
    
    func configure(model: SidedishItem, nPrice: String, badge: [Bool]) {
        dishName.text = model.title
        dishDescription.text = model.description
        sellingPrice.text = model.sPrice
        
        let attributeString: NSMutableAttributedString =  NSMutableAttributedString(string: nPrice)
        attributeString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 2, range: NSMakeRange(0, attributeString.length))
        originalPrice.attributedText = attributeString
        
        eventBadge.isHidden = badge[0]
        launchBadge.isHidden = badge[1]
    }
    
    func configure(data: Data) {
        dishImage.image = UIImage(data: data)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        eventBadge.isHidden = true
        launchBadge.isHidden = true
    }
}

enum Badge: String {
    case event = "이벤트특가"
    case launch = "론칭특가"
}
