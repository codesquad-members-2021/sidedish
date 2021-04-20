//
//  ViewController.swift
//  SideDishApp
//
//  Created by 오킹 on 2021/04/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dishTableView: UITableView!
    
    let tableViewDataSource = TableViewDataSource()
    var datasource : UITableViewDiffableDataSource<section,DishCard>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        dishTableView.dataSource = tableViewDataSource
        
        datasource = configureDataSource()
        
        let testCard = DishCard.init()
        let testCard1 = DishCard.init()
        let testCard2 = DishCard.init()
        
        var snapshot = NSDiffableDataSourceSnapshot<section,DishCard>()
        snapshot.appendSections([section.main])
        snapshot.appendItems([testCard], toSection: section.main)
        snapshot.appendSections([section.soup])
        snapshot.appendItems([testCard1], toSection: section.soup)
        snapshot.appendSections([section.side])
        snapshot.appendItems([testCard2], toSection: section.side)
//        for section in section.allCases {
//            snapshot.appendItems([testCard], toSection: section)
//        }
        
        datasource.apply(snapshot, animatingDifferences: true, completion: {

        })
    }
    
    func configureDataSource() -> UITableViewDiffableDataSource<section,DishCard> {
        let dataSource = DishTableViewDiffableDataSource(tableView: dishTableView, cellProvider: { tableView, indexPath, customCell in
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "DishCard", for: indexPath) as? DishCard else {
                return UITableViewCell()
            }
    //        cell.dishImage.image = UIImage()
//            cell.title.text = "title1"
//            cell.body.text = "body2"
            return cell
            
        })
        return dataSource
    }
}

class DishTableViewDiffableDataSource : UITableViewDiffableDataSource<section, DishCard> {
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return snapshot().sectionIdentifiers[section].rawValue.uppercased()
    }
}

enum section : String, CaseIterable {
    case main = "main"
    case soup = "soup"
    case side = "side"
}
