//
//  HeaderCollectionReusableView.swift
//  Sidedish
//
//  Created by Issac on 2021/04/19.
//

import UIKit

protocol HeaderClickable: class {
    func didClickedHeader(attributedQuote: NSAttributedString)
}

class HeaderCollectionReusableView: UICollectionReusableView {
    static let identifier = "collectionViewHeader"
    
    weak var delegate: HeaderClickable?
    
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var countLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(didTapped))
        self.addGestureRecognizer(tapGesture)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(didTapped))
        self.addGestureRecognizer(tapGesture)
    }
    
    @objc func didTapped() {
        let attributedQuote = "\(title.text ?? "")\n\(countLabel.text ?? "")".attributedStringOfFontSize(of: 16)
        self.delegate?.didClickedHeader(attributedQuote: attributedQuote)
    }
}
