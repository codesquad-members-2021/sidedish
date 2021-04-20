//
//  ViewController.swift
//  Side-dish
//
//  Created by HOONHA CHOI on 2021/04/19.
//

import UIKit
import Combine

class SideDishViewController: UIViewController {
    
    @IBOutlet weak var SideDishCollectionView: UICollectionView!
    private var cancellable = Set<AnyCancellable>()
    private var sideDishViewModel: SideDishViewModel!
    
    private var dataSource : UICollectionViewDiffableDataSource<Section , Item>!
    
    enum Section: String, CaseIterable {
        case main = "한그릇 뚝딱 메인요리"
        case soup = "김이 모락모락 국,찌개"
        case side = "언제 먹어도 든든한 밑반찬"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
        SideDishCollectionView.register(FoodCardCell.nib, forCellWithReuseIdentifier: FoodCardCell.identifier)
        
        SideDishCollectionView.delegate = self
        var snap = NSDiffableDataSourceSnapshot<Section,Item>()
        snap.appendSections(Section.allCases)
        sideDishViewModel.test { (sideDish) in
            snap.appendItems(sideDish, toSection: .main)
            self.dataSource.apply(snap)
        }
        sideDishViewModel.occur { (t) in
            print("test : \(t)")
        }
        
        configureDataSource()
    }
    
    func depend(sideDishViewModel: SideDishViewModel) {
        self.sideDishViewModel = sideDishViewModel
    }
    
    func configureDataSource() {
//        let cellRegistration = UICollectionView.CellRegistration<FoodCardCell, Item> { (cell, indexPath, item) in
//
////            let index = sidedishes[indexPath.row]
//
//            cell.configure(item: item)
//        }
        self.dataSource = UICollectionViewDiffableDataSource<Section, Item>(collectionView: SideDishCollectionView, cellProvider: { (collectionView, indexPath, item) -> UICollectionViewCell? in
            
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FoodCardCell.identifier, for: indexPath) as? FoodCardCell else { return UICollectionViewCell() }

            cell.configure(item: item)
            return cell
            
        
//            return collectionView.dequeueConfiguredReusableCell(using: cellRegistration, for: indexPath, item: item) as FoodCardCell
        })
    }
}

extension SideDishViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 130)
    }
}
