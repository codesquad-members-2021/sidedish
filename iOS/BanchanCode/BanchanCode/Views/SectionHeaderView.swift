//
//  SectionHeaderView.swift
//  BanchanCode
//
//  Created by jinseo park on 4/21/21.
//

import UIKit
import Toaster

class SectionHeaderView: UICollectionReusableView {
    
    @IBOutlet weak var sectionTitleLabel: UILabel!
    
    static let identifier = "SectionHeaderView"
    var countOfMenus: Int = 0
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        Toast(text: "\(countOfMenus)개 상품이 등록되어 있습니다").show()
    }
}
