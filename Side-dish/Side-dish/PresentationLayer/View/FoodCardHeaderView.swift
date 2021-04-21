//
//  FoodCardHeaderView.swift
//  Side-dish
//
//  Created by HOONHA CHOI on 2021/04/21.
//

import UIKit

class FoodCardHeaderView: UICollectionReusableView {

    @IBOutlet weak var sectionTitle: UIButton!
    @IBOutlet weak var sectionDescription: UILabel!
    @IBOutlet weak var descriptionStackView: UIStackView!
    
    static var identifier: String {
        return String(describing: self)
    }
    
    static var nib: UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configureHeader(index : IndexPath) {
        sectionTitle.setTitle(Path.allCases[index.section].title, for: .normal)
        sectionDescription.text = "0개 상품이 등록되어 있습니다"
    }
    
    @IBAction func titleButtonTouched(_ sender: UIButton) {
        UIView.animate(withDuration: 0.2) {
            self.descriptionStackView.isHidden = !self.descriptionStackView.isHidden
            self.layoutIfNeeded()
        }
    }
}
