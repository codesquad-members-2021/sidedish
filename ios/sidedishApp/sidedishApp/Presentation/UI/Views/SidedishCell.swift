//
//  SidedishCell.swift
//  sidedishApp
//
//  Created by zombietux on 2021/04/19.
//

import UIKit

class SidedishCell: UICollectionViewCell {
    static let reuseIdentifier = "SidedishCell"
    
    let nameLabel = UILabel()
    let descriptionLabel = UILabel()
    let normalPriceLabel = UILabel()
    let salePriceLabel = UILabel()
    let badgeLabel = BadgeLabel()
    let eventBadgeStackView = UIStackView()
    let thumbnailImageView = RemoteImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configureUI()
    }
    
    func configureCell(item: Item) {
        self.nameLabel.text = item.getName()
        self.descriptionLabel.text = item.getDescription()
        self.normalPriceLabel.text = "\(item.getNormalPrice())"
        self.salePriceLabel.text = "\(item.getSalePrice())"
        self.salePriceLabel.isHidden = item.isNotSale()
        guard let url = URL(string: item.getThumbnailImage()) else { return }
        self.thumbnailImageView.setImage(with: url)
        self.badgeLabel.backgroundColor = .systemGreen
        self.badgeLabel.text = "이벤트특가"
    }
    
    private func configureUI() {
        nameLabel.font = UIFont.boldSystemFont(ofSize: 21)
        nameLabel.numberOfLines = 2
        
        descriptionLabel.font = UIFont.systemFont(ofSize: 15)
        descriptionLabel.textColor = .gray
        
        salePriceLabel.font = UIFont.boldSystemFont(ofSize: 15)
        normalPriceLabel.font = UIFont.systemFont(ofSize: 14)
        normalPriceLabel.textColor = .systemGray2
        
        badgeLabel.padding = UIEdgeInsets(top: 5, left: 8, bottom: 5, right: 8)
        badgeLabel.sizeToFit()
        badgeLabel.layer.cornerRadius = 8
        badgeLabel.layer.masksToBounds = true
        badgeLabel.textColor = .systemBackground
        badgeLabel.font = UIFont.boldSystemFont(ofSize: 16)
        
        eventBadgeStackView.spacing = 8
        eventBadgeStackView.axis = .horizontal
        
        eventBadgeStackView.addArrangedSubview(badgeLabel)
        
        let priceStack = UIStackView(arrangedSubviews: [salePriceLabel, normalPriceLabel])
        priceStack.axis = .horizontal
        priceStack.spacing = 8
        
        let textStack = UIStackView(arrangedSubviews: [nameLabel, descriptionLabel, priceStack, eventBadgeStackView])
        textStack.axis = .vertical
        textStack.alignment = .leading
        textStack.spacing = 8
        
        thumbnailImageView.contentMode = .scaleAspectFill
        thumbnailImageView.layer.cornerRadius = 6
        thumbnailImageView.layer.masksToBounds = true
        
        let itemStack = UIStackView(arrangedSubviews: [thumbnailImageView, textStack])
        itemStack.axis = .horizontal
        itemStack.alignment = .center
        itemStack.spacing = 10
        
        contentView.addSubview(itemStack)
        itemStack.translatesAutoresizingMaskIntoConstraints = false
        
        let imageWidthConstraint = thumbnailImageView.widthAnchor.constraint(equalToConstant: 160)
        imageWidthConstraint.priority = .defaultHigh + 1
        
        NSLayoutConstraint.activate([
            imageWidthConstraint,
            thumbnailImageView.heightAnchor.constraint(equalTo: thumbnailImageView.widthAnchor, multiplier: 1),
            itemStack.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            itemStack.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            itemStack.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8),
            itemStack.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8)
        ])
    }
}
