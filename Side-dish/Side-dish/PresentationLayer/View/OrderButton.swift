//
//  OrderButton.swift
//  Side-dish
//
//  Created by HOONHA CHOI on 2021/04/23.
//

import UIKit

class OrderButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configure()
    }
    
    func configure() {
        layer.cornerRadius = 5
        layer.shadowOpacity = 0.3
        layer.shadowRadius = 5
        layer.shadowOffset = CGSize(width: 3, height: 3)
        layer.shadowColor = UIColor.black.cgColor
    }
}
