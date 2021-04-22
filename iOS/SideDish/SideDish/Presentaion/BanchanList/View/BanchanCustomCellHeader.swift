//
//  BanchanCustomCellHeader.swift
//  SideDish
//
//  Created by 심영민 on 2021/04/20.
//

import UIKit
import Toaster

class BanchanCustomCellHeader: UICollectionReusableView {

    @IBOutlet weak var titleLabel: UILabel!
    static let identifier = "BanchanCustomCellHeader"
    var cellCount = 0
    
    override func awakeFromNib() {
        super.awakeFromNib()
        let tapRecognizer = UITapGestureRecognizer(target: self, action: #selector(headerTouched(_:)))
        self.addGestureRecognizer(tapRecognizer)
    }
    
    static var nib: UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    func configure(title: String, count: Int) {
        titleLabel.text = title
        cellCount = count
    }
    
    @objc func headerTouched(_ sender: UITapGestureRecognizer) {
        Toast(text: "\(cellCount)개 상품이 등록되어 있습니다.").show()
    }
}
