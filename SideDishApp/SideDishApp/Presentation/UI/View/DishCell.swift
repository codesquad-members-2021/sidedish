//
//  DishCell.swift
//  SideDishApp
//
//  Created by 이다훈 on 2021/04/26.
//

import UIKit

class DishCell: UICollectionViewListCell {

    @IBOutlet weak var dishImage: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var body: UILabel!
    @IBOutlet weak var charge: UILabel!
    @IBOutlet weak var eventStackView: UIStackView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    class var reuseIdentifier: String {
        return "\(self)"
    }
}
