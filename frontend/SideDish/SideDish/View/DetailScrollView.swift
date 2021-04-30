//
//  DetailScrollView.swift
//  SideDish
//
//  Created by sonjuhyeong on 2021/04/27.
//

import UIKit

class DetailScrollView: UIScrollView {
    
    @IBOutlet weak var thumbnailImageWidthConstraint: NSLayoutConstraint!
    @IBOutlet weak var thumbnailImageHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var thumbnailScrollView: UIScrollView!
    @IBOutlet weak var thumbnailImage: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var body: UILabel!
    @IBOutlet weak var salePrice: UILabel!
    @IBOutlet weak var normalPrice: UILabel!
    @IBOutlet weak var badgeView: UIView!
    @IBOutlet weak var eventBadge: UILabel!
    @IBOutlet weak var launchingBadge: UILabel!
    
    @IBOutlet weak var point: UILabel!
    @IBOutlet weak var deliveryInfo: UILabel!
    @IBOutlet weak var deliveryFee: UILabel!
    
    @IBOutlet weak var orderCount: UILabel!
    @IBOutlet weak var increaseButton: UIButton!
    @IBOutlet weak var decreaseButton: UIButton!
    
    @IBOutlet weak var totalPrice: UILabel!
    @IBOutlet weak var orderButton: UIButton!
    
    @IBOutlet weak var detailStackView: UIStackView!
    
    func setCornerRadius() {
        self.eventBadge.layer.masksToBounds = true
        self.eventBadge.layer.cornerRadius = 5
        
        self.launchingBadge.layer.masksToBounds = true
        self.launchingBadge.layer.cornerRadius = 5
        
        self.orderButton.layer.cornerRadius = 5
    }
    
    func setBorderWidth() {
        let gray = UIColor(red: 100/255, green: 100/255, blue: 100/255, alpha: 0.3).cgColor
        
        self.orderCount.layer.borderWidth = 1
        self.orderCount.layer.borderColor = gray
        
        self.increaseButton.layer.borderWidth = 1
        self.increaseButton.layer.borderColor = gray

        self.decreaseButton.layer.borderWidth = 1
        self.decreaseButton.layer.borderColor = gray
    }
    
}
