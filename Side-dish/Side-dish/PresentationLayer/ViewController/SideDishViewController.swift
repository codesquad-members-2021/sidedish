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
    
    private var dataSource : UICollectionViewDiffableDataSource<Path , Item>!
    
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
        self.dataSource = UICollectionViewDiffableDataSource<Path, Item>(collectionView: SideDishCollectionView, cellProvider: { (collectionView, indexPath, item) -> UICollectionViewCell? in
            return collectionView.dequeueConfiguredReusableCell(using: cellRegistration, for: indexPath, item: item) as FoodCardCell
        })
    }
    
    func bind() {
        var snap = NSDiffableDataSourceSnapshot<Path,Item>()
        snap.appendSections(Path.allCases)

        sideDishViewModel.didFetchSideDishes { (path, items) in
            snap.appendItems(items, toSection: path)
            self.dataSource.apply(snap)
        }
        
        sideDishViewModel.except { (error) in
            self.triggerAlert(by: error)
        }
    }
    
    private func triggerAlert(by error : String) {
        DispatchQueue.main.async {
            self.present(Alert.controller(title : error),animated: true)
        }
    }
}

extension SideDishViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 130)
    }
}
