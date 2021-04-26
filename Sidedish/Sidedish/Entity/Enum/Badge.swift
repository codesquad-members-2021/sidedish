//
//  Badge.swift
//  Sidedish
//
//  Created by Issac on 2021/04/23.
//

import Foundation

enum Badge: CustomStringConvertible {
    case event
    case launch
    
    var description: String {
        switch self {
        case .event:
            return "이벤트특가"
        case .launch:
            return "론칭특가"
        }
    }
}
