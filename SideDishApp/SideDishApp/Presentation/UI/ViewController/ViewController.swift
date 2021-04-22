//
//  ViewController.swift
//  SideDishApp
//
//  Created by 오킹 on 2021/04/20.
//

import UIKit
import Combine

class ViewController: UIViewController {

    @IBOutlet weak var dishCollectionView: UICollectionView!
    
    private let menuListViewModel = MenuListViewModel()
    private var subscriptions = Set<AnyCancellable>()
    var datasource : UICollectionViewDiffableDataSource<section,DishCardCell>!
    let colorDictionary = ["이벤트특가" : UIColor.systemGreen, "런칭특가" : UIColor.systemBlue]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bind()
        menuListViewModel.requestDishes()
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
    
    func bind() {
        menuListViewModel.$main
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { _ in
                //error
            }, receiveValue: { _ in
                print("메인 화면처리 해야함")
            })
            .store(in: &subscriptions)
        
        menuListViewModel.$soup
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { _ in
                //error
            }, receiveValue: { _ in
                print("수프 화면처리 해야함")
            })
            .store(in: &subscriptions)
        
        menuListViewModel.$side
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { _ in
                //error
            }, receiveValue: { _ in
                print("사이드 화면처리 해야함 ")
            })
            .store(in: &subscriptions)
    }
    
    func configureDataSource() -> UICollectionViewDiffableDataSource<section,DishCardCell> {
        let dataSource = UICollectionViewDiffableDataSource<section,DishCardCell> (collectionView: dishCollectionView, cellProvider: { collectionView,indexPath,customCell in
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DishCardCell.reuseIdentifier, for: indexPath) as? DishCardCell else {
                return UICollectionViewCell()
            }
            sleep(2)
            cell.title.text = "\(self.menuListViewModel.main[0].dishes[indexPath.row].title)"
            
            cell.title.numberOfLines = 0
            cell.body.text = "\(self.menuListViewModel.main[0].dishes[indexPath.row].description)"
            
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
