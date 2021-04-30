//
//  FoodCardCell.swift
//  Side-dish
//
//  Created by 조중윤 on 2021/04/19.
//

import UIKit
import Combine

class FoodCardCell: UICollectionViewCell {
    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var itemTitleLabel: UILabel!
    @IBOutlet weak var itemBodyLabel: UILabel!
    @IBOutlet weak var sPriceLabel: UILabel!
    @IBOutlet weak var nPriceLabel: NPriceLabel!
    @IBOutlet weak var badgeStackView: UIStackView!
    
    private var cancellable = Set<AnyCancellable>()
    
    static var identifier: String {
        return String(describing: self)
    }
    
    static var nib: UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        self.itemImageView.layer.cornerRadius = 10
    }
    
    func configure(with item: Item) {
        itemTitleLabel.text = item.title
        itemBodyLabel.text = item.description
        sPriceLabel.text = item.sPrice
        nPriceLabel.configure(price: item.nPrice)
        setBadge(badges: item.badge)
    }
    
    func setImage(with uiimage: UIImage?) {
        guard let image = uiimage else {
            return
        }
        self.itemImageView.image = image
    }
    
    func setBadge(badges: [Badge]?) {
        guard let badges = badges, !(badges.isEmpty) else {
            hideView(ui: badgeStackView)
            return
        }
        
        showView(ui: badgeStackView)
        self.badgeStackView.arrangedSubviews.forEach { (view) in
                    view.removeFromSuperview()
        }
        badges.forEach { (badge) in
            let badgeLabel = BadgeLabel()
            badgeLabel.configure(with: badge)
            self.badgeStackView.addArrangedSubview(badgeLabel)
        }
    }
    
    private func hideView<T : UIView>(ui : T) {
        ui.isHidden = true
    }
    private func showView<T : UIView>(ui : T) {
        ui.isHidden = false
    }
}
