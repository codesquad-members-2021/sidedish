//
//  String+StrikeThrough.swift
//  BanchanCode
//
//  Created by Song on 2021/04/22.
//

import UIKit

extension String {
    func strikethrough() -> NSAttributedString {
        let attributedString = NSMutableAttributedString(string: self)
        attributedString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: NSUnderlineStyle.single.rawValue, range: NSMakeRange(0, attributedString.length))
        return attributedString
    }
}
