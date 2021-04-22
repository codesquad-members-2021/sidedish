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
    
    //Portrait <-> Landscape 대응 위해 Computed Property로 설정
    static var windowHeight: CGFloat {
        get {
            return ToastWindow.shared.screen.bounds.height
        }
    }
    
    enum MessageType: String {
        case category = "현재 카테고리의 품목은 "
        case stock = "현재 남은 수량은 "
        
        func fullText(for count: Int) -> String {
            return rawValue + "\(count)개 입니다"
        }
    }
    
    enum ToastColor {
        static let normal = ColorSet(background: .init(red: 0, green: 0, blue: 0, alpha: 0.65),
                                     text: .white)
        static let urgent = ColorSet(background: .init(red: 0.9, green: 0.1, blue: 0.1, alpha: 0.8),
                                     text: .white)
    }
    
    struct ColorSet {
        let background: UIColor
        let text: UIColor
    }
    
    static func popCategoryBubble(count: Int) {
        toast.cancel()
        toast = toast(of: count, messageType: .category, colorSet: ToastColor.normal, isLocatedTop: true)
        toast.view.layoutSubviews(alignType: .left)
        toast.start()
    }
    
    static func popStockBubble(count: Int) {
        toast.cancel()
        let colorSet = count >= 5 ? ToastColor.normal : ToastColor.urgent
        toast = toast(of: count, messageType: .stock, colorSet: colorSet, isLocatedTop: false)
        toast.view.layoutSubviews(alignType: .center)
        toast.start()
    }
    
    static func toast(of count: Int, messageType: MessageType, colorSet: ColorSet, isLocatedTop: Bool) -> Toast {
        let newToast = Toast(text: messageType.fullText(for: count))
        
        newToast.view.backgroundColor = colorSet.background
        newToast.view.textColor = colorSet.text
        
        let offset: CGFloat = isLocatedTop ? 0.85 : 0.05
        newToast.view.bottomOffsetPortrait = windowHeight * offset
        newToast.view.bottomOffsetLandscape = windowHeight * offset * 0.97
        
        return newToast
    }
}
