//
//  BadgeLabel.swift
//  Side-dish
//
//  Created by 조중윤 on 2021/04/20.
//

import UIKit

class BadgeLabel: UILabel {
    var topInset: CGFloat
    var bottomInset: CGFloat
    var leftInset: CGFloat
    var rightInset: CGFloat

     init(withInsets top: CGFloat, _ bottom: CGFloat,_ left: CGFloat,_ right: CGFloat) {
         self.topInset = top
         self.bottomInset = bottom
         self.leftInset = left
         self.rightInset = right
         super.init(frame: CGRect.zero)
     }

     required init?(coder: NSCoder) {
        self.topInset = 0
        self.bottomInset = 0
        self.leftInset = 0
        self.rightInset = 0
        super.init(coder: coder)
     }

     override func drawText(in rect: CGRect) {
         let insets = UIEdgeInsets(top: topInset, left: leftInset, bottom: bottomInset, right: rightInset)
        super.drawText(in: rect.inset(by: insets))
     }

     override var intrinsicContentSize: CGSize {
         get {
             var contentSize = super.intrinsicContentSize
             contentSize.height += topInset + bottomInset
             contentSize.width += leftInset + rightInset
             return contentSize
         }
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
