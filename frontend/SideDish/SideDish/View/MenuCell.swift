//
//  MenuCell.swift
//  SideDish
//
//  Created by sonjuhyeong on 2021/04/20.
//

import UIKit
import Kingfisher

class MenuCell: UICollectionViewCell {

    @IBOutlet weak var launchingBadgeConstraint: NSLayoutConstraint!
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
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupBadgeShape()
    }
    
    override func prepareForReuse() {
        self.eventLabel.isHidden = false
        self.launchingLabel.isHidden = false
        self.badgeView.isHidden = false
        self.eventLabel.widthAnchor.constraint(equalToConstant: 72).isActive = true
        self.launchingBadgeConstraint.constant = 76
    }
    
    private func setupBadgeShape() {
        self.eventLabel.layer.masksToBounds = true
        self.eventLabel.layer.cornerRadius = 5
        self.launchingLabel.layer.masksToBounds = true
        self.launchingLabel.layer.cornerRadius = 5
    }

    func configure(menu: MenuViewModel) {
        self.titleLabel.text = menu.title
        self.bodyLabel.text = menu.body
        self.currentPriceLabel.text = "\(menu.sPrice)원"
        self.pastPriceLabel.attributedText = menu.nPrice
        guard let url = URL(string: menu.image) else { return }
        self.thumbnailImage.kf.setImage(with: url)
        setBadge(menu: menu)
    }
    
    func setBadge(menu: MenuViewModel) {
        if menu.verifyBadges(badges: menu.badges) == [true, false] {
            self.launchingLabel.isHidden = true
        } else if menu.verifyBadges(badges: menu.badges) == [false, true] {
            self.eventLabel.isHidden = true
            self.launchingBadgeConstraint.constant = 0
        } else if menu.verifyBadges(badges: menu.badges) == [false, false] {
            self.badgeView.isHidden = true
        } else {
            self.eventLabel.isHidden = false
            self.launchingLabel.isHidden = false
            self.badgeView.isHidden = false
        }
    }
    
}
