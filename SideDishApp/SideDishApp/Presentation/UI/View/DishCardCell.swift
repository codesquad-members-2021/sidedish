//
//  DishCardCell.swift
//  SideDishApp
//
//  Created by 이다훈 on 2021/04/20.
//

import UIKit

class DishCardCell : UICollectionViewCell {    @IBOutlet weak var dishImage: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var body: UILabel!
    @IBOutlet weak var charge: UILabel!
    @IBOutlet weak var eventStackView: UIStackView!
    
    class var reuseIdentifier: String {
        return "\(self)"
    }
    
}
