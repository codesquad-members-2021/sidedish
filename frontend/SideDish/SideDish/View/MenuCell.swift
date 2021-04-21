//
//  MenuCell.swift
//  SideDish
//
//  Created by sonjuhyeong on 2021/04/20.
//

import UIKit

class MenuCell: UICollectionViewCell {

    @IBOutlet weak var thumbnailImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!
    @IBOutlet weak var currentPriceLabel: UILabel!
    @IBOutlet weak var pastPriceLabel: UILabel!
    @IBOutlet weak var eventLabel: UILabel!
    @IBOutlet weak var launchingLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configure()
    }
    
    func configure() {
        self.eventLabel.layer.masksToBounds = true
        self.eventLabel.layer.cornerRadius = 5
        self.launchingLabel.layer.masksToBounds = true
        self.launchingLabel.layer.cornerRadius = 5
    }

}
