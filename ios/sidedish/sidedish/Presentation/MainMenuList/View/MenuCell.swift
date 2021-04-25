//
//  MenuCell.swift
//  sidedish
//
//  Created by 박정하 on 2021/04/19.
//

import UIKit

class MenuCell : UITableViewCell {
    
    static let identifier: String = "MenuCell"
    
    enum BadgeType: String {
        case event = "이벤트특가"
        case launching = "론칭특가"
        
        var description: String {
            return rawValue
        }
    }
    
    @IBOutlet weak var menuImage: UIImageView!
    @IBOutlet weak var menuTitle: UILabel!
    @IBOutlet weak var menuSubTitle: UILabel!
    @IBOutlet weak var reducedPrice: UILabel!
    @IBOutlet weak var menuPrice: UILabel!
    @IBOutlet weak var eventBadge: UILabel!
    @IBOutlet weak var launchingBadge: UILabel!
    
    
    func updateMenu(image: UIImage, titleText: String, subTitle: String, price: Int, reducedPrice: Int, badge: [String]){
        selectionStyle = .none
        self.menuTitle.text = titleText
        self.menuSubTitle.text = subTitle
        
        //할인가가 없을 경우 0으로 전송, 본 가격만 표시
        if reducedPrice == 0 {
            self.menuPrice.isHidden = true
            self.reducedPrice.text = "\(price)원"
        } else {
            self.menuPrice.isHidden = false
            self.menuPrice.attributedText = cancelStrokedString("\(price)원")
            self.reducedPrice.text = "\(reducedPrice)원"
        }
        
        self.eventBadge.isHidden = badge.contains(BadgeType.event.description) ? false : true
        self.launchingBadge.isHidden = badge.contains(BadgeType.launching.description) ? false : true
    }
    
    private func cancelStrokedString(_ string: String) -> NSMutableAttributedString {
        let attributedString = NSMutableAttributedString(string: string)
        let range = NSRange(location: 0, length: attributedString.length)
        attributedString.addAttribute(.baselineOffset, value: 0, range: range)
        attributedString.addAttribute(.strikethroughStyle, value: 1, range: range)
        return attributedString
    }
}
