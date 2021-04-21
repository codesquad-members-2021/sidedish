//
//  CardCell.swift
//  SideDish
//
//  Created by 양준혁 on 2021/04/19.
//

import UIKit
import Alamofire

class CardCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbnail: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var detail: UILabel!
    @IBOutlet weak var discountPrice: UILabel!
    @IBOutlet weak var originalPrice: UILabel!
    @IBOutlet weak var eventBadge: UILabel!
    @IBOutlet weak var launchingBadge: UILabel!
    
    
    @IBOutlet weak var badgeView: UIStackView!
    
    var card : Card? {
        didSet {
            thumbnail.load(url: card?.imageURL)
            title.text = card?.title
            detail.text = card?.detail
            discountPrice.text = card?.discountPrice?.description
            originalPrice.text = card?.originalPrice?.description
            
            guard let badges = card?.badge else {
                badgeView.isHidden = true
                return
            }
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        configureTitle()
        configureDetail()
        configureThumbnail()
        configureBedge()
    }
    func configureTitle(){
        self.title.textColor = UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)
        self.title.font = UIFont(name: "NotoSansKR-Bold", size: 16)
        self.title.numberOfLines = 0
        self.title.lineBreakMode = .byWordWrapping
    }
    func configureDetail(){
        self.detail.textColor = UIColor(red: 0.51, green: 0.51, blue: 0.51, alpha: 1)
        self.detail.font = UIFont(name: "NotoSansKR-Regular", size: 14)
    }
    func configurePrice(){
        self.discountPrice.textColor = UIColor(red: 0.004, green: 0.004, blue: 0.004, alpha: 1)
        self.discountPrice.font = UIFont(name: "NotoSansKR-Bold", size: 14)
        
        self.originalPrice.textColor = UIColor(red: 0.741, green: 0.741, blue: 0.741, alpha: 1)
        self.originalPrice.font = UIFont(name: "NotoSansKR-Regular", size: 14)
    }
    func configureThumbnail(){
        self.thumbnail.layer.cornerRadius = 5
    }
    func configureBedge(){
        self.eventBadge.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        self.eventBadge.font = UIFont(name: "NotoSansKR-Bold", size: 14)
        self.eventBadge.backgroundColor = #colorLiteral(red: 0.5095996261, green: 0.8290402293, blue: 0.1742436588, alpha: 1)
        self.eventBadge.layer.cornerRadius = 5
        
        self.launchingBadge.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        self.launchingBadge.font = UIFont(name: "NotoSansKR-Bold", size: 14)
        self.launchingBadge.backgroundColor =  #colorLiteral(red: 0.6011084318, green: 0.8016367555, blue: 0.9797580838, alpha: 1)
        self.launchingBadge.layer.cornerRadius = 5
    }
}
