//
//  SectionHeaderView.swift
//  BanchanCode
//
//  Created by jinseo park on 4/21/21.
//

import UIKit
import Toaster

class SectionHeaderView: UICollectionReusableView {
    
    @IBOutlet weak var sectionStackView: UIStackView!
    @IBOutlet weak var sectionTitleLabel: UILabel!
    @IBOutlet weak var sectionContentLabel: UILabel!
    
    static let reuseIdentifier = String(describing: SectionHeaderView.self)
    var countOfMenus: Int = 0
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.sectionContentLabel.isHidden = true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.sectionContentLabel.text = "\(countOfMenus)개 상품이 등록되어 있습니다"
        Toast(text: "\(countOfMenus)개 상품이 등록되어 있습니다").show()
        UIView.animate(withDuration: 0.5) {
            self.sectionContentLabel.isHidden = !self.sectionContentLabel.isHidden
            self.layoutIfNeeded()
        }
    }
    
    func fill(with viewModel: DishesViewModel) {
        sectionTitleLabel.text = viewModel.category.value.sectionTitle
    }
}
