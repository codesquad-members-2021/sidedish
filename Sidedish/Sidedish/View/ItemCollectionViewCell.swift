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
    
    func configure(model: SidedishItem) {
        dishName.text = model.title
        dishDescription.text = model.description
        sellingPrice.text = model.sPrice
        
        let priceString = model.nPrice == nil ? "" : "\(model.nPrice ?? "")원"
        let attributeString: NSMutableAttributedString =  NSMutableAttributedString(string: priceString)
        attributeString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 2, range: NSMakeRange(0, attributeString.length))
        originalPrice.attributedText = attributeString
        
        model.badge?.forEach { text in
            switch text {
            case Badge.event.rawValue:
                eventBadge.text = text
                eventBadge.isHidden = false
            case Badge.launch.rawValue:
                launchBadge.text = text
                launchBadge.isHidden = false
            default:
                eventBadge.isHidden = true
                launchBadge.isHidden = true
            }
        }
    }
    
    func configure(image: UIImage) {
        dishImage.image = image
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
