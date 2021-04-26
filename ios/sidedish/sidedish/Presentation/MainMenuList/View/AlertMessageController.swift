//
//  AlertMessageController.swift
//  sidedish
//
//  Created by 박정하 on 2021/04/23.
//

import UIKit

class AlertMessageController{
    
    static func makeAlertController(error : String) -> UIAlertController {
        let alertcontroller : UIAlertController = UIAlertController(title: error, message: nil, preferredStyle: .alert)
        alertcontroller.addAction(UIAlertAction(title: "확인", style: .default, handler: nil))
        return alertcontroller
    }
    
}
