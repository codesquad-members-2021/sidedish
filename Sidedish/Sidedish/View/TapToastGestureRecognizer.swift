//
//  TapToastGestureRecognizer.swift
//  Sidedish
//
//  Created by Issac on 2021/04/20.
//

import UIKit

class TapToastGestureRecognize: UITapGestureRecognizer {
    var title: String
    var countText: String
    
    override init(target: Any?, action: Selector?) {
        self.title = ""
        self.countText = ""
        super.init(target: target, action: action)
    }
    
    convenience init(target: Any?, action: Selector?, title: String, countText: String) {
        self.init(target: target, action: action)
        self.title = title
        self.countText = countText
    }
}
