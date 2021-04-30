//
//  DetailHeaderView.swift
//  Side-dish
//
//  Created by HOONHA CHOI on 2021/04/26.
//

import UIKit
import Combine

class DetailContenetView: UIView {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var badgesStackView: UIStackView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var pointLabel: UILabel!
    @IBOutlet weak var deliveryInfoLabel: UILabel!
    @IBOutlet weak var deliveryFeeLabel: UILabel!
    @IBOutlet weak var sPriceLabel: UILabel!
    @IBOutlet weak var nPriceLabel: NPriceLabel!
    @IBOutlet weak var amountLabel: UILabel!
    @IBOutlet weak var totalPrice: UILabel!
    @IBOutlet weak var thumbnailStackView: UIStackView!
    @IBOutlet weak var detailSectionStackView: UIStackView!
    
    private var cancellable = Set<AnyCancellable>()
    
    func configure(with item: Item) {
        titleLabel.text = item.title
        configureBadges(badges: item.badge)
        configurePrices(sPrice: item.sPrice, nPrice: item.nPrice)
    }
    
    func amountConfigure(amount: String, total: String) {
        DispatchQueue.main.async { [weak self] in
            self?.amountLabel.text = amount
            self?.totalPrice.text = total
        }
    }
    
    func deliveryInfoConfigure(with itemData: ItemData) {
        DispatchQueue.main.async { [weak self] in
            self?.descriptionLabel.text = itemData.productDescription
            self?.pointLabel.text = itemData.point
            self?.deliveryInfoLabel.text = itemData.deliveryInfo
            self?.deliveryFeeLabel.text = itemData.deliveryFee
        }
    }
    
    func thumbImageLoad(images: [String]) {
        images.forEach { [unowned self] (imageURL) in
            let imageView = UIImageView()
            imageView.translatesAutoresizingMaskIntoConstraints = false
            self.thumbnailStackView.addArrangedSubview(imageView)
            
            ImageLoader().imageLoad(urlString: imageURL).sink { (uiImage) in
                guard let image = uiImage else {
                    return
                }
                imageView.image = image
                let ratio = self.frame.width / self.thumbnailStackView.frame.height
                imageView.widthAnchor.constraint(equalTo: self.thumbnailStackView.heightAnchor, multiplier: ratio).isActive = true
            }.store(in: &cancellable)
        }
    }
    
    func desctionImageLoad(desctionImage: [String]) {
        desctionImage.forEach { [weak self] (imageURL) in
            let imageView = UIImageView()
            imageView.translatesAutoresizingMaskIntoConstraints = false
            self?.detailSectionStackView.addArrangedSubview(imageView)
            
            ImageLoader().imageLoad(urlString: imageURL).sink { (uiImage) in
                guard let uiimage = uiImage else {
                    imageView.isHidden = true
                    return
                }
                imageView.image = uiImage
                let ratio = uiimage.size.height / uiimage.size.width
                imageView.heightAnchor.constraint(equalTo: imageView.widthAnchor, multiplier: ratio).isActive = true
            }.store(in: &cancellable)
        }
    }
    
    private func configureBadges(badges: [Badge]?) {
        guard let badges = badges, !(badges.isEmpty) else {
            return
        }
        badgesStackView.isHidden = false
        badges.forEach { [weak self] (badge) in
            let badgeLabel = BadgeLabel()
            badgeLabel.configure(with: badge)
            self?.badgesStackView.addArrangedSubview(badgeLabel)
        }
    }
    
    private func configurePrices(sPrice: String, nPrice: String?) {
        sPriceLabel.text = sPrice
        nPriceLabel.configure(price: nPrice)
    }
}
