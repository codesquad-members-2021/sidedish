//
//  NSAttributedString+PartiallyBoldText.swift
//  BanchanCode
//
//  Created by Song on 2021/04/30.
//

import UIKit

extension NSAttributedString {
    func makeBold(_ string: String, within wholeString: String, font: UIFont) -> NSAttributedString {
        let attributedString = NSMutableAttributedString(string: wholeString,
                                                         attributes: [NSAttributedString.Key.font: font])
        let boldFontAttribute: [NSAttributedString.Key: Any] = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: font.pointSize)]
        let range = (wholeString as NSString).range(of: string)
        attributedString.addAttributes(boldFontAttribute, range: range)
        return attributedString
    }
}
