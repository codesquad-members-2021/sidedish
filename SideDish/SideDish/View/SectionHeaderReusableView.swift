//
//  HeaderView.swift
//  SideDish
//
//  Created by 박혜원 on 2021/04/19.
//

import UIKit

class SectionHeaderReusableView: UICollectionReusableView {
    static var reuseIdentifier: String {
      return String(describing: SectionHeaderReusableView.self)
    }
    
    @IBOutlet weak var label : UILabel!
    
}
