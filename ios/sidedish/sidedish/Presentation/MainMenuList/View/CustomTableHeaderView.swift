//
//  CustomeTableHeaderView.swift
//  sidedish
//
//  Created by 박정하 on 2021/04/23.
//

import UIKit

class CustomTableHeaderView : UIView {
    
    static func make(width : CGFloat, height: CGFloat, text: String) -> UIView {
        let headerView : UIView = UIView(frame: CGRect(x: 0, y: 0, width: width, height: height))
        
        let label = UILabel()
        label.frame = CGRect.init(x: 0, y: 0, width: headerView.frame.width, height: headerView.frame.height)
        label.text = text
        label.font = .boldSystemFont(ofSize: 22)
        label.backgroundColor = .white
        headerView.addSubview(label)
        
        return headerView
    }
    
}


 
