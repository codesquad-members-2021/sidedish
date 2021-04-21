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
    @IBOutlet weak var nPriceLabel: UILabel!
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
        setImage(itemURLString: item.image)
        itemTitleLabel.text = item.title
        itemBodyLabel.text = item.description
        sPriceLabel.text = item.sPrice
        setNPrice(nPrice: item.nPrice)
        setBadge(badges: item.badge)
    }
    
    func setImage(itemURLString: String) {
        ImageUseCase.execute(imageURLString: itemURLString)
            .receive(on: DispatchQueue.main)
            .sink { (complete) in
        } receiveValue: { (data) in
            self.itemImageView.image = UIImage(data: data)
        }.store(in: &cancellable)
    }
    
    func setNPrice(nPrice: String?) {
        guard let nPrice = nPrice else {
            hideView(UI: nPriceLabel)
            return
        }
        showView(UI: nPriceLabel)
        let strokeEffect: [NSAttributedString.Key : Any] = [NSAttributedString.Key.strikethroughStyle: NSUnderlineStyle.single.rawValue]
        let strokeString = NSAttributedString(string: "\(nPrice)원", attributes: strokeEffect)
        self.nPriceLabel.attributedText = strokeString
    }
    
    func setBadge(badges: [Badge]?) {
        guard let badges = badges, !(badges.isEmpty) else {
            hideView(UI: badgeStackView)
            return
        }
        
        showView(UI: badgeStackView)
        self.badgeStackView.arrangedSubviews.forEach { (view) in
                    view.removeFromSuperview()
        }
        badges.forEach { (badge) in
            let badgeLabel = BadgeLabel()
            badgeLabel.configure(with: badge)
            self.badgeStackView.addArrangedSubview(badgeLabel)
        }
    }
    
    private func hideView<T : UIView>(UI : T) {
        UI.isHidden = true
    }
    private func showView<T : UIView>(UI : T) {
        UI.isHidden = false
    }
}
