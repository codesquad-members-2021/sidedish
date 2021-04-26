//
//  MenuCell.swift
//  SideDish
//
//  Created by sonjuhyeong on 2021/04/20.
//

import UIKit
import Kingfisher

class MenuCell: UICollectionViewCell {

    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var thumbnailImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!
    @IBOutlet weak var currentPriceLabel: UILabel!
    @IBOutlet weak var pastPriceLabel: UILabel!
    @IBOutlet weak var eventLabel: UILabel!
    @IBOutlet weak var launchingLabel: UILabel!
    @IBOutlet weak var contentStackView: UIStackView!
    @IBOutlet weak var badgeView: UIView!
    
    private let menuCellValidater = MenuCellValidater()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupBadge()
    }
    
    private func setupBadge() {
        self.eventLabel.layer.masksToBounds = true
        self.eventLabel.layer.cornerRadius = 5
        self.launchingLabel.layer.masksToBounds = true
        self.launchingLabel.layer.cornerRadius = 5
    }

    func configure(menu: MenuViewModel) {
        self.titleLabel.text = menu.title
        self.bodyLabel.text = menu.body
        self.currentPriceLabel.text = menu.sPrice
        self.pastPriceLabel.attributedText = menu.nPrice
        guard let url = URL(string: menu.image) else { return }
//        guard let data = try? Data(contentsOf: url) else { return }
//        self.thumbnailImage.image = UIImage(data: data)
        self.thumbnailImage.kf.setImage(with: url)
        badge(menu: menu)
    }
    
    func badge(menu: MenuViewModel) {
        // badge 1
        if menu.verifyBadges(badges: menu.badges) == [true, false] {
            self.launchingLabel.isHidden = true
        // badge 2
        }else if menu.verifyBadges(badges: menu.badges) == [false, true] {
            self.eventLabel.isHidden = true
            self.launchingLabel.leftAnchor.constraint(equalTo: contentStackView.leftAnchor, constant: 0).isActive = true
        }else if menu.verifyBadges(badges: menu.badges) == [false, false] {
            self.badgeView.isHidden = true
            contentStackView.topAnchor.constraint(equalTo: cellView.topAnchor, constant: 16).isActive = true
            contentStackView.bottomAnchor.constraint(equalTo: cellView.bottomAnchor, constant: -27.5).isActive = true
        }
        else{
            self.eventLabel.isHidden = false
            self.launchingLabel.isHidden = false
        }
    }
    
}
