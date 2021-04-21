//
//  MainCell.swift
//  sidedishApp
//
//  Created by zombietux on 2021/04/19.
//

import UIKit

class MainCell: UICollectionViewCell {
    static let reuseIdentifier = "MainCell"
    
    let nameLabel = UILabel()
    let descriptionLabel = UILabel()
    let normalPriceLabel = UILabel()
    let salePriceLabel = UILabel()
    let eventBadgeLabel = UILabel()
    let thumbnailImageView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func configure() {
        nameLabel.font = UIFont.preferredFont(forTextStyle: .title1)
        nameLabel.textColor = .black
        nameLabel.numberOfLines = 3
        
        descriptionLabel.font = UIFont.preferredFont(forTextStyle: .body)
        descriptionLabel.textColor = .darkText
        
        let priceStack = UIStackView(arrangedSubviews: [normalPriceLabel, salePriceLabel])
        priceStack.axis = .horizontal
        
        let textStack = UIStackView(arrangedSubviews: [nameLabel, descriptionLabel, priceStack, eventBadgeLabel])
        textStack.axis = .vertical
        textStack.alignment = .leading
        textStack.spacing = 8
        
        thumbnailImageView.contentMode = .scaleAspectFill
        thumbnailImageView.layer.cornerRadius = 8
        thumbnailImageView.layer.masksToBounds = true
        
        let itemStack = UIStackView(arrangedSubviews: [thumbnailImageView, textStack])
        itemStack.axis = .horizontal
        itemStack.spacing = 8
        
        contentView.addSubview(itemStack)
        itemStack.translatesAutoresizingMaskIntoConstraints = false
        
        let imageWidthConstraint = thumbnailImageView.widthAnchor.constraint(equalToConstant: 120)
        imageWidthConstraint.priority = .defaultHigh + 1
        
        NSLayoutConstraint.activate([
            imageWidthConstraint,
            thumbnailImageView.heightAnchor.constraint(equalTo: thumbnailImageView.widthAnchor, multiplier: 1),
            itemStack.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            itemStack.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8),
            itemStack.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8),
            itemStack.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8)
        ])
    }
}
