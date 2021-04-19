//
//  HeaderCollectionReusableView.swift
//  Sidedish
//
//  Created by Issac on 2021/04/19.
//

import UIKit

class HeaderCollectionReusableView: UICollectionReusableView {
    static let identifier = "collectionViewHeader"
    
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var countLabel: UILabel!
    
}
