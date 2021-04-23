//
//  MainTableViewDataSource.swift
//  sidedish
//
//  Created by 박정하 on 2021/04/19.
//

import UIKit

class MainTableViewDataSource : NSObject, UITableViewDataSource {
    
    private let menuCellViewModel : MenuCellViewModel
    
    init(menucellViewModel : MenuCellViewModel) {
        self.menuCellViewModel = menucellViewModel
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return menuCellViewModel.sideCategoryCount()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuCellViewModel.sideDishesCount(section: section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell : MenuCell = tableView.dequeueReusableCell(withIdentifier: MenuCell.identifier, for: indexPath) as? MenuCell else { return UITableViewCell() }
        //cell.updateMenu(titleText: menuCellViewModel.dishes.body[indexPath.section].sideDish(at: indexPath.row)!.title)
        cell.updateMenu(titleText: menuCellViewModel.dishes.getsidedish(section: indexPath.section).sideDish(at: indexPath.row)!.title)
        
        return cell
    }
}
