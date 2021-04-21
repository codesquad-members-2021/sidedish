//
//  ViewController.swift
//  SideDishApp
//
//  Created by 오킹 on 2021/04/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dishCollectionView: UICollectionView!
    
    var datasource : UICollectionViewDiffableDataSource<section,DishCardCell>!
    let colorDictionary = ["이벤트특가" : UIColor.systemGreen, "런칭특가" : UIColor.systemBlue]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        datasource = configureDataSource()

        let testCard = DishCardCell.init()
        let testCard1 = DishCardCell.init()
        let testCard2 = DishCardCell.init()

        var snapshot = NSDiffableDataSourceSnapshot<section,DishCardCell>()
        snapshot.appendSections([section.main])
        snapshot.appendItems([testCard], toSection: section.main)
        snapshot.appendSections([section.soup])
        snapshot.appendItems([testCard1], toSection: section.soup)
        snapshot.appendSections([section.side])
        snapshot.appendItems([testCard2], toSection: section.side)
//        for section in section.allCases {
//            snapshot.appendItems([testCard], toSection: section)
//        }

        datasource.apply(snapshot)
    }
    
    func configureDataSource() -> UICollectionViewDiffableDataSource<section,DishCardCell> {
        let dataSource = UICollectionViewDiffableDataSource<section,DishCardCell> (collectionView: dishCollectionView, cellProvider: { collectionView,indexPath,customCell in
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DishCardCell.reuseIdentifier, for: indexPath) as? DishCardCell else {
                return UICollectionViewCell()
            }
            
            cell.title.text = "title1123123123123123123123123123"
            
            cell.title.numberOfLines = 0
            cell.body.text = "body2"
            
            cell.eventStackView.spacing = 4
            cell.eventStackView.addArrangedSubview(self.createEventLabel(text: "이벤트특가"))
            cell.eventStackView.addArrangedSubview(self.createEventLabel(text: "런칭특가"))
            
            return cell
        })
        
        return dataSource
    }
    
    func createEventLabel(text : String) -> UILabel {

        var label : UILabel {
            let newLabel = UILabel()
            newLabel.text = "  \(text)  "
            newLabel.clipsToBounds = true
            newLabel.layer.cornerRadius = 5
            newLabel.backgroundColor = colorDictionary[text]
            newLabel.textColor = UIColor.white
            newLabel.font = UIFont.systemFont(ofSize: 12, weight: .bold)
            
            return newLabel
        }
        
        return label
    }
    
}

enum section : String, CaseIterable {
    case main = "main"
    case soup = "soup"
    case side = "side"
}

