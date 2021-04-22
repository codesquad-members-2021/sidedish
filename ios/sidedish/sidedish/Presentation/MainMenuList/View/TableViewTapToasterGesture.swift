//
//  CustomTapGesture.swift
//  sidedish
//
//  Created by 박정하 on 2021/04/22.
//

import UIKit
import Toaster

class TableViewTapToasterGesture : UITapGestureRecognizer {
    
    var count : Int?
    
    enum MessageType: String {
        case category = "현재 품목은 "
        case stock = "남은 수량은 "
        
        var leadingText: String {
            return rawValue
        }
    }
    
    func show(messageType: MessageType) {
        guard let count = count else { return }
        let toast = Toast(text: messageType.leadingText + "\(count)개입니다.")
        toast.view.backgroundColor = UIColor.init(red: 0, green: 0, blue: 0, alpha: 0.65)
        toast.view.textColor = .white
        toast.view.bottomOffsetPortrait = CGFloat(ToastWindow.shared.screen.bounds.height/100 * 85)
        toast.start()
    }
}
