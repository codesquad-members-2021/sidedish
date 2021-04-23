//
//  MainTableViewDelegate.swift
//  sidedish
//
//  Created by 박정하 on 2021/04/19.
//

import UIKit

class MainTableViewDelegate : NSObject, UITableViewDelegate {
    private let viewModel : MenuCellViewModel
    private var delegate : ViewChangable!
    
    init(viewModel : MenuCellViewModel) {
        self.viewModel = viewModel
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: tableView.frame.width, height: 32))
        
        let label = UILabel() 
        label.frame = CGRect.init(x: 0, y: 0, width: headerView.frame.width, height: headerView.frame.height)
        label.text = viewModel.dishes.body[section].name
        label.font = .boldSystemFont(ofSize: 22)
        label.backgroundColor = .white
        
        let popupGesture : TableViewTapToasterGesture = TableViewTapToasterGesture(target: self, action: #selector(popupToast(sender: )))
        popupGesture.count = viewModel.sideDishesCount(section: section)
        
        headerView.addSubview(label)
        headerView.addGestureRecognizer(popupGesture)
        
        return headerView
    }
 
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let count = indexPath.row
        CustomToaster.show(count: count, messageType: .stock, isTop: false)
        self.delegate?.pushNextView()
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 56 // headerView의 height(32) + figma에서 지정해 준 헤더와 셀 간의 간격!
    }
    
    func set(delegate: ViewChangable){
        self.delegate = delegate
    }
    
    @objc func popupToast(sender : TableViewTapToasterGesture){
        guard let count = sender.count else { return }
        CustomToaster.show(count: count, messageType: .category, isTop: true)
    }
}
