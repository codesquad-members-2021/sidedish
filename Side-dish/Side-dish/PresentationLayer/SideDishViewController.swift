//
//  ViewController.swift
//  Side-dish
//
//  Created by HOONHA CHOI on 2021/04/19.
//

import UIKit
import Combine

enum Section: String, CaseIterable {
    case main = "한그릇 뚝딱 메인요리"
    case soup = "김이 모락모락 국,찌개"
    case side = "언제 먹어도 든든한 밑반찬"
}

class SideDishViewController: UIViewController {
    
    @IBOutlet weak var SideDishCollectionView: UICollectionView!
    private var cancellable = Set<AnyCancellable>()
    private var sideDishViewModel: SideDishViewModel!
    
    private var dataSource : UICollectionViewDiffableDataSource<Section , Item>!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
        
        SideDishCollectionView.delegate = self
        
        configureDataSource()
        bind()
    }
    
    func depend(sideDishViewModel: SideDishViewModel) {
        self.sideDishViewModel = sideDishViewModel
    }
    
    func configureDataSource() {
        let cellRegistration = UICollectionView.CellRegistration<FoodCardCell, Item>.init(cellNib: FoodCardCell.nib) { (cell, indexPath, item) in
            cell.configure(with: item)
        }
        self.dataSource = UICollectionViewDiffableDataSource<Section, Item>(collectionView: SideDishCollectionView, cellProvider: { (collectionView, indexPath, item) -> UICollectionViewCell? in
            return collectionView.dequeueConfiguredReusableCell(using: cellRegistration, for: indexPath, item: item) as FoodCardCell
        })
    }
    
    func bind() {
        var snap = NSDiffableDataSourceSnapshot<Section,Item>()
        snap.appendSections(Section.allCases)
//        sideDishViewModel.fetchMain { (sideDish) in
//            snap.appendItems(sideDish, toSection: .main)
//            self.dataSource.apply(snap)
//        }
        sideDishViewModel.fetchMain1 { (sideDish) in
            print("fetchMain1 들어온 데이터 \(sideDish)")
            snap.appendItems(sideDish, toSection: .main)
            self.dataSource.apply(snap)
        }
        
        sideDishViewModel.fetchMain2 { (sideDish) in
            print("fetchMain2 들어온 데이터 \(sideDish)")
            snap.appendItems(sideDish, toSection: .soup)
            self.dataSource.apply(snap)
        }
        
        sideDishViewModel.except { (t) in
        }
    }
}

extension SideDishViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 130)
    }
}
