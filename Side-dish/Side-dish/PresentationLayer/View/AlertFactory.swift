//
//  AlertFactory.swift
//  Side-dish
//
//  Created by HOONHA CHOI on 2021/04/21.
//

import UIKit

enum Alert {
    static func controller(title: String) -> UIAlertController {
        let controller = UIAlertController(title: title, message: nil, preferredStyle: .alert)
        controller.addAction(UIAlertAction(title: "확인", style: .default, handler: nil))
        return controller
    }
}
