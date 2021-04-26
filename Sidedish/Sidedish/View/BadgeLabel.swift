//
//  BadgeLabel.swift
//  Sidedish
//
//  Created by Ador on 2021/04/22.
//

import UIKit

class BadgeLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.layer.cornerRadius = 8
        self.clipsToBounds = true
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.layer.cornerRadius = 8
        self.clipsToBounds = true
    }
}
