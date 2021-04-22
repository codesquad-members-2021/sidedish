//
//  BadgeLabel.swift
//  Sidedish
//
//  Created by Ador on 2021/04/22.
//

import UIKit

class BadgeLabel: UILabel {

    override func layoutSubviews() {
        self.layer.cornerRadius = 8
        self.clipsToBounds = true
    }

}
