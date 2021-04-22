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
    
    @IBOutlet weak var title : UILabel!
    
    func configure(){
        self.title.textColor = UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)
        self.title.font = UIFont(name: "NotoSansKR-Bold", size: 22)
    }
}
