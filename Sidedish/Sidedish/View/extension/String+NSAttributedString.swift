//
//  String+NS.swift
//  Sidedish
//
//  Created by Issac on 2021/04/23.
//

import UIKit

extension String {
    func attributedStringOfStrikethroughStyle() -> NSAttributedString {
        let attributeString: NSMutableAttributedString =  NSMutableAttributedString(string: self)
        attributeString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 2, range: NSMakeRange(0, attributeString.length))
        return attributeString
    }
    
    func attributedStringOfFontSize(of size: CGFloat) -> NSAttributedString {
        let font = UIFont.systemFont(ofSize: size)
        let attributes: [NSAttributedString.Key: Any] = [.font: font]
        let attributedQuote = NSAttributedString(string: self, attributes: attributes)
        return attributedQuote
    }
}
