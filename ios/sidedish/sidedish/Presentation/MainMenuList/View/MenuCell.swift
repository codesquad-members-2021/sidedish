//
//  MenuCell.swift
//  sidedish
//
//  Created by 박정하 on 2021/04/19.
//

import UIKit

class MenuCell : UITableViewCell {
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
    
    func updateMenu(titleText: String){
        self.menuTitle.text = titleText
    }
}
