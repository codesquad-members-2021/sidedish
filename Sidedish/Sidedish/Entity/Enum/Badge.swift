//
//  Badge.swift
//  Sidedish
//
//  Created by Issac on 2021/04/23.
//

import Foundation

enum Badge: String, CustomStringConvertible {
    case event = "이벤트특가"
    case launch = "론칭특가"
    
    var description: String {
        return self.rawValue
    }
}
