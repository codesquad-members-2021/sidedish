//
//  BadgeView.swift
//  BanchanCode
//
//  Created by Song on 2021/04/29.
//

import UIKit

class BadgeView: UIView {
    lazy var badgeLabel: UILabel = {
        let badgeLabel = UILabel(frame: CGRect.zero)
        badgeLabel.font = UIFont.systemFont(ofSize: 12.0, weight: .bold)
        badgeLabel.textColor = .white
        badgeLabel.translatesAutoresizingMaskIntoConstraints = false
        return badgeLabel
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    func commonInit() {
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 5.0
        self.translatesAutoresizingMaskIntoConstraints = false
        addSubview(badgeLabel)
        setupLayout()
    }
    
    private func setupLayout() {
        badgeLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        self.leadingAnchor.constraint(equalTo: badgeLabel.leadingAnchor, constant: -8.0).isActive = true
        self.trailingAnchor.constraint(equalTo: badgeLabel.trailingAnchor, constant: 8.0).isActive = true
        badgeLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        self.topAnchor.constraint(equalTo: topAnchor).isActive = true
        self.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
}
