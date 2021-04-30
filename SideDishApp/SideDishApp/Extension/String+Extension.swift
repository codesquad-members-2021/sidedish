//
//  String+Extension.swift
//  SideDishApp
//
//  Created by 이다훈 on 2021/04/22.
//

import UIKit

extension String {
    
    func styleAsCharge(with stroke: String, with bold: String) -> NSMutableAttributedString {
        let attributedString = NSMutableAttributedString(string: self)
        
            attributedString.addAttribute(.strikethroughStyle,
                                          value: NSUnderlineStyle.single.rawValue,
                                          range: (self as NSString).range(of: "\(stroke)")
            )
            
            attributedString.addAttribute(.foregroundColor,
                                          value: UIColor.systemGray2,
                                          range: (self as NSString).range(of: "\(stroke)")
            )
        
            attributedString.addAttribute(.font,
                                          value: UIFont.systemFont(ofSize: 14, weight: .bold),
                                          range: (self as NSString).range(of: "\(bold)")
            )
        
        return attributedString
    }
    
    static func insertComma(with string: String) -> String {
        var targetString = string
        let count = targetString.count / 3
        for i in 0..<count {
            let targetIndex = targetString.index(string.endIndex, offsetBy: -((i + 1) * 3))
            targetString.insert(",", at: targetIndex )
        }
        return targetString
    }
}
