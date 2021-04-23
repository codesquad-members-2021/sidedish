//
//  BanchanCustomCellHeader.swift
//  SideDish
//
//  Created by 심영민 on 2021/04/20.
//

import UIKit

class BanchanCustomCellHeader: UICollectionReusableView {

    @IBOutlet weak var titleLabel: UILabel!
    static let identifier = "BanchanCustomCellHeader"
    
    static var nib: UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    func configure(title: String) {
        titleLabel.text = title
    }
}
