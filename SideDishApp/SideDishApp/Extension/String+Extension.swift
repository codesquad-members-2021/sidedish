//
//  String+Extension.swift
//  SideDishApp
//
//  Created by 이다훈 on 2021/04/22.
//

import UIKit

extension String {
    
    func addStroke(target words : String...) -> NSMutableAttributedString {
        let attributedString = NSMutableAttributedString(string: self)
        
        for word in words {
            attributedString.addAttribute(.strikethroughStyle,
                                          value: NSUnderlineStyle.single.rawValue,
                                          range: (self as NSString).range(of: "\(word)")
            )
            
            attributedString.addAttribute(.foregroundColor,
                                          value: UIColor.systemGray2,
                                          range: (self as NSString).range(of: "\(word)")
            )
        }
        
        return attributedString
    }
}
