//
//  BadgeLabel.swift
//  Side-dish
//
//  Created by 조중윤 on 2021/04/20.
//

import UIKit

class BadgeLabel: UILabel {

    private var padding: UIEdgeInsets = UIEdgeInsets(top: 4, left: 8, bottom: 4, right: 8)
    
    override func drawText(in rect: CGRect) {
        let paddingRect = rect.inset(by: padding)
        super.drawText(in: paddingRect)
    }
    
    override var intrinsicContentSize: CGSize {
        var contentSize = super.intrinsicContentSize
        contentSize.height += padding.top + padding.bottom
        contentSize.width += padding.left + padding.right
        return contentSize
    }
    
    func configure(with badge: Badge) {
        self.text = badge.rawValue
        self.setBackgroundColor(badge: badge)
        self.uiAdjustment(badge: badge)
    }
    
    private func setBackgroundColor(badge: Badge) {
        var targetColor: UIColor {
            switch badge {
            case .eventPrice: return UIColor.init(named: "EventColor")!
            case .launchingPrice: return UIColor.init(named: "LaunchingColor")!
            }
        }
        self.backgroundColor = targetColor
    }
    
    private func uiAdjustment(badge: Badge) {
        self.layer.cornerRadius = 5
        self.layer.masksToBounds = true
        self.textColor = .white
        self.textAlignment = .center
        self.font = .boldSystemFont(ofSize: 14)
    }
}
