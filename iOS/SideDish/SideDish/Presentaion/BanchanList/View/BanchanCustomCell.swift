//
//  BanchanCustomCell.swift
//  SideDish
//
//  Created by 심영민 on 2021/04/20.
//

import UIKit

class BanchanCustomCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var sPriceLabel: UILabel!
    @IBOutlet weak var nPriceLabel: UILabel!
    @IBOutlet weak var badgeStackView: UIStackView!
    
    static let identifer = "BanchanCustomCell"
    
    static var nib: UINib {
        return UINib(nibName: identifer, bundle: nil)
    }
    
    var banchan: Banchan? {
        didSet{
            imageView.load(url: banchan?.image)
            titleLabel.text = banchan?.title
            descriptionLabel.text = banchan?.description
            setNPrice(text: banchan?.nPrice)
            sPriceLabel.text = banchan?.sPrice
            setBadges(badges: banchan?.badges)
        }
    }
    
    private func setNPrice(text: String?) {
        guard let text = text else {
            nPriceLabel.isHidden = true
            return
        }
        let strikeThroughAttributeStyle = [NSAttributedString.Key.strikethroughStyle: NSNumber(value: NSUnderlineStyle.single.rawValue)]
       
        nPriceLabel.attributedText = NSAttributedString(string: text, attributes: strikeThroughAttributeStyle)
    }
    
    private func setBadges(badges: [String]?) {
        badgeStackView.arrangedSubviews.forEach {
            $0.removeFromSuperview()
        }
        
        guard let badges = badges else {
            badgeStackView.isHidden = true
            return
        }

        badges.forEach { (badge) in
            let badgeLabel = BadgeLabel()
            print(badge)
            badgeLabel.configure(text: badge)
            badgeStackView.addArrangedSubview(badgeLabel)
        }
    }
}
