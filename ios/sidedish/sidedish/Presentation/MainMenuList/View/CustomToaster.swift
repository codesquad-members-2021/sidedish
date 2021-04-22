//
//  CustomToaster.swift
//  sidedish
//
//  Created by Song on 2021/04/22.
//

import Foundation
import Toaster

class CustomToaster {
    
    static var toast = Toast(text: nil)
    
    enum MessageType: String {
        case category = "현재 품목은 "
        case stock = "남은 수량은 "
        
        var leadingText: String {
            return rawValue
        }
    }
    
    static func show(count: Int, messageType: MessageType, isTop: Bool) {
        toast.cancel()
        toast = Toast(text: messageType.leadingText + "\(count)개입니다.")
        toast.view.backgroundColor = UIColor.init(red: 0, green: 0, blue: 0, alpha: 0.65)
        toast.view.textColor = .white
        let offset: CGFloat = isTop ? 85 : 5
        toast.view.bottomOffsetPortrait = CGFloat(ToastWindow.shared.screen.bounds.height/100 * offset)
        toast.start()
    }

}
