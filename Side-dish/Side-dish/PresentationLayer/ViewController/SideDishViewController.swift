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
            ImageUseCase().loadImage(imageURL: item.image) { (imageURL) in
                cell.setImage(itemURL: imageURL)
            }
            cell.configure(with: item)
        }
        
        let headerViewRegistration = UICollectionView.SupplementaryRegistration<FoodCardHeaderView>.init(supplementaryNib: FoodCardHeaderView.nib, elementKind: UICollectionView.elementKindSectionHeader) { (headerView, _, indexPath) in
            let rows = self.sideDishViewModel.didFetchHeaderRowCount(with: Path.allCases[indexPath.section])
            headerView.configureHeader(index: indexPath, count: rows)
        }
        
        self.dataSource = UICollectionViewDiffableDataSource<Path, Item>(collectionView: SideDishCollectionView, cellProvider: { (collectionView, indexPath, item) -> UICollectionViewCell? in
            return collectionView.dequeueConfiguredReusableCell(using: cellRegistration, for: indexPath, item: item) as FoodCardCell
        })
        
        self.dataSource.supplementaryViewProvider = { (view, kind, index) in
            return self.SideDishCollectionView.dequeueConfiguredReusableSupplementary(using: headerViewRegistration, for: index)
        }
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
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 85)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        let cell = SideDishCollectionView.cellForItem(at: indexPath) as! FoodCardCell
        let tappedItemSection = indexPath.section
        let tappedItemRow = indexPath.row
        let path = Path.allCases[tappedItemSection]
        let itemDetailHash = sideDishViewModel.didFetchItemDatailHash(with: path, sequence: tappedItemRow)
        
        guard let targetVC = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController else {
            return
        }
        targetVC.depend2(detailViewModel: DIContainer.createDI2())
        targetVC.detailHash = itemDetailHash
        self.navigationController?.pushViewController(targetVC, animated: true)
    }
    
}
