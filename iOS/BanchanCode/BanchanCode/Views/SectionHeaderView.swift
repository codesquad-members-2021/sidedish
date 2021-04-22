//
//  SectionHeaderView.swift
//  BanchanCode
//
//  Created by jinseo park on 4/21/21.
//

import UIKit

class SectionHeaderView: UICollectionReusableView {
    
    @IBOutlet weak var sectionTitleLabel: UILabel!
    
    static let identifier = "SectionHeaderView"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        sectionTitleLabel.text = "모두가 좋아하는 든든한 메인 요리"
    }
}
