//
//  MainTableViewDelegate.swift
//  sidedish
//
//  Created by 박정하 on 2021/04/19.
//

import UIKit

class MainTableViewDelegate: NSObject, UITableViewDelegate {
    private let viewModel: MenuCellViewModel
    private var delegate: ViewChangable!
    
    init(viewModel: MenuCellViewModel) {
        self.viewModel = viewModel
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerWidth = tableView.frame.width
        let headerHeight = ViewPosition.headerViewHeight.rawValue
        let titleText = viewModel.dishesCategory[section].categoryName
        let headerView = CustomTableHeaderView.make(width: headerWidth,
                                                                         height: headerHeight,
                                                                         text: titleText)
        
        let popupGesture = TableViewTapToasterGesture(target: self, action: #selector(popupToast(sender:)))
        popupGesture.count = viewModel.sideDishesCount(section: section)
        headerView.addGestureRecognizer(popupGesture)
        
        return headerView
    }
 
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let count = indexPath.row
        CustomToaster.popStockBubble(count: count)
        self.delegate?.pushNextView()
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return ViewPosition.headerViewHeight.rawValue + ViewPosition.gapHeaderViewAndCell.rawValue
    }
    
    @objc func popupToast(sender : TableViewTapToasterGesture){
        guard let count = sender.count else { return }
        CustomToaster.popCategoryBubble(count: count)
    }
    
    enum ViewPosition : CGFloat {
        case headerViewHeight = 32,
             gapHeaderViewAndCell = 24
    }
    
    func set(delegate: ViewChangable){
        self.delegate = delegate
    }
}
