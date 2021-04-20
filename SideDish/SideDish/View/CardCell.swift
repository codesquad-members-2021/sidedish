//
//  CardCell.swift
//  SideDish
//
//  Created by 양준혁 on 2021/04/19.
//

import UIKit

class CardCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbnail: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var detail: UILabel!
    @IBOutlet weak var discountPrice: UILabel!
    @IBOutlet weak var originalPrice: UILabel!
    @IBOutlet weak var eventBadge: UIImageView!
    @IBOutlet weak var launchingBadge: UIImageView!
    
    @IBOutlet weak var badgeView: UIStackView!
    
    var card : Card? {
        didSet {
            thumbnail.load(url: card?.imageURL)
            title.text = card?.title
            detail.text = card?.detail
            discountPrice.text = card?.discountPrice.description
            originalPrice.text = card?.originalPrice.description
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        configureBedge()
    }
    func configureBedge(){
        self.eventBadge.backgroundColor = #colorLiteral(red: 0.5095996261, green: 0.8290402293, blue: 0.1742436588, alpha: 1)
        self.eventBadge.layer.cornerRadius = 5
        
        self.launchingBadge.backgroundColor =  #colorLiteral(red: 0.6011084318, green: 0.8016367555, blue: 0.9797580838, alpha: 1)
        self.launchingBadge.layer.cornerRadius = 5
    }
}
