//
//  MenuCell.swift
//  sidedish
//
//  Created by 박정하 on 2021/04/19.
//

import UIKit

class MenuCell : UITableViewCell {
    internal static let identifier : String = "MenuCell"
    
    @IBOutlet weak var menuImage: UIImageView!
    
    @IBOutlet weak var menuTitle: UILabel!
    @IBOutlet weak var menuSubTitle: UILabel!
    @IBOutlet weak var reducedPrice: UILabel!
    @IBOutlet weak var menuPrice: UILabel!
    @IBOutlet weak var specialPrice: UILabel!
    
    func updateMenu(titleText: String, subTitle: String, reducedPrice: String, price: String, isSpecialPrice: Bool){
        self.menuTitle.text = titleText
        self.menuSubTitle.text = subTitle
        self.reducedPrice.text = reducedPrice
        self.menuPrice.text = price
        self.specialPrice.isHidden = isSpecialPrice
        
        if isSpecialPrice {
            menuPrice.isHidden = true
        }
    }
    
    func updateMenu(image: UIImage, titleText: String, subTitle: String, price: Int, reducedPrice: Int, badge: [String]){
        selectionStyle = .none
        self.menuTitle.text = titleText
        self.menuSubTitle.text = subTitle
        self.menuPrice.text = "\(price)원"
        self.reducedPrice.text = "\(reducedPrice)원"
        self.specialPrice.text = "\(badge[0])"
    }
}
