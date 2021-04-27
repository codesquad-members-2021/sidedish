//
//  NPriceLabel.swift
//  Side-dish
//
//  Created by HOONHA CHOI on 2021/04/26.
//

import UIKit

class NPriceLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func configure(price: String?) {
        guard let price = price else {
            self.isHidden = true
            return
        }
        let strokeEffect: [NSAttributedString.Key : Any] = [NSAttributedString.Key.strikethroughStyle: NSUnderlineStyle.single.rawValue]
        let strokeString = NSAttributedString(string: "\(price)원", attributes: strokeEffect)
        self.attributedText = strokeString
    }
}
