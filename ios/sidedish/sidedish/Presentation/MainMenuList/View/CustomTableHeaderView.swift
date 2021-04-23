//
//  CustomeTableHeaderView.swift
//  sidedish
//
//  Created by 박정하 on 2021/04/23.
//

import UIKit

class CustomTableHeaderView : UIView {
    static func makeCustomTableHeaderView(width : CGFloat, height: CGFloat) -> UIView{
        let HeaderView : UIView = UIView(frame: CGRect(x: 0, y: 0, width: width, height: height))
        return HeaderView
    }
}
