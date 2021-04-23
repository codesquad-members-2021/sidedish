//
//  BadgeLabel.swift
//  SideDish
//
//  Created by 지북 on 2021/04/22.
//

import UIKit

class BadgeLabel: UILabel {
    
    private let topInset: CGFloat = 4.0
    private let bottomInset: CGFloat = 4.0
    private let leftInset: CGFloat = 8.0
    private let rightInset: CGFloat = 8.0
    
    let badgeColors: [String:UIColor] = ["이벤트특가": UIColor(displayP3Red: 130/255, green: 211/255, blue: 45/255, alpha: 1), "런칭특가": UIColor(displayP3Red: 134/255, green: 198/255, blue: 255/255, alpha: 1)]
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func configure(text badgeText: String) {
        translatesAutoresizingMaskIntoConstraints = false
        font = UIFont.systemFont(ofSize: 12, weight: .regular)
        textColor = .white
        backgroundColor = badgeColors[badgeText]
        text = badgeText
        clipsToBounds = true
        layer.cornerRadius = 5
    }
    
    override func drawText(in rect: CGRect) {
        let insets = UIEdgeInsets(top: topInset, left: leftInset, bottom: bottomInset, right: rightInset)
        super.drawText(in: rect.inset(by: insets))
    }
    
    override var intrinsicContentSize: CGSize {
        let size = super.intrinsicContentSize
        return CGSize(width: size.width + leftInset + rightInset,
                      height: size.height + topInset + bottomInset)
    }
}
