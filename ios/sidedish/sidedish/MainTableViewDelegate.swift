//
//  MainTableViewDelegate.swift
//  sidedish
//
//  Created by 박정하 on 2021/04/19.
//

import UIKit

class MainTableViewDelegate : NSObject, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: tableView.frame.width, height: 32))
        
        let label = UILabel() //나중에 별도의 유즈케이스를 처리할 프로토콜 필요할 거 같아요
        label.frame = CGRect.init(x: 0, y: 0, width: headerView.frame.width, height: headerView.frame.height)
        label.text = "모두가 좋아하는 든든한 메인요리"
        label.font = .boldSystemFont(ofSize: 22)
        
        headerView.addSubview(label)
        
        return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 56 // headerView의 height(32) + figma에서 지정해 준 헤더와 셀 간의 간격!
    }
}
