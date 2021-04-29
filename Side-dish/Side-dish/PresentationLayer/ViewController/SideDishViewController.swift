//
//  ViewController.swift
//  Side-dish
//
//  Created by HOONHA CHOI on 2021/04/19.
//

import UIKit
import Combine

class SideDishViewController: UIViewController {
    
    @IBOutlet weak var sideDishCollectionView: UICollectionView!
    //@Dependency
    private var sideDishViewModel: SideDishViewModel!
    @Dependency var dvm : DetailViewModel
    @Dependency var usecase: SideDishUseCase
    private var cancellable = Set<AnyCancellable>()
    private var dataSource : UICollectionViewDiffableDataSource<Menu, Item>!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red
        sideDishViewModel = SideDishViewModel(sideDishUseCase: usecase)
        
        sideDishCollectionView.delegate = self
        configureDataSource()
        bind()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.navigationBar.isHidden = false
    }
    
    func configureDataSource() {
        let cellRegistration = UICollectionView.CellRegistration<FoodCardCell, Item>.init(cellNib: FoodCardCell.nib) { (cell, indexPath, item) in
            ImageLoader().load(imageURL: item.image) { (imageURL) in
                cell.setImage(itemURL: imageURL)
            }
            cell.configure(with: item)
        }
        
        let headerViewRegistration = UICollectionView.SupplementaryRegistration<FoodCardHeaderView>.init(supplementaryNib: FoodCardHeaderView.nib, elementKind: UICollectionView.elementKindSectionHeader) { (headerView, _, indexPath) in
            let rows = self.sideDishViewModel.didFetchHeaderRowCount(with: Menu.allCases[indexPath.section])
            headerView.configureHeader(index: indexPath, count: rows)
        }
        
        self.dataSource = UICollectionViewDiffableDataSource<Menu, Item>(collectionView: sideDishCollectionView, cellProvider: { (collectionView, indexPath, item) -> UICollectionViewCell? in
            return collectionView.dequeueConfiguredReusableCell(using: cellRegistration, for: indexPath, item: item) as FoodCardCell
        })
        
        self.dataSource.supplementaryViewProvider = { (view, kind, index) in
            return self.sideDishCollectionView.dequeueConfiguredReusableSupplementary(using: headerViewRegistration, for: index)
        }
    }
    
    func bind() {
        var snap = NSDiffableDataSourceSnapshot<Menu,Item>()
        snap.appendSections(Menu.allCases)
        
        sideDishViewModel.didFetchSideDishes { [weak self] (path, items) in
            snap.appendItems(items, toSection: path)
            self?.dataSource.apply(snap)
        }
        
        sideDishViewModel.except { [weak self] (error) in
            self?.triggerAlert(by: error)
        }
        
        sideDishViewModel.didFetch().sink { item in
        }.store(in: &cancellable)
        
        sideDishViewModel.except2().sink { (error) in
            self.triggerAlert(by: error)
        }.store(in: &cancellable)
    }
    
    private func triggerAlert(by error : String) {
        DispatchQueue.main.async { [weak self] in
            self?.present(Alert.create(title : error),animated: true)
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
        let tappedItemSection = indexPath.section
        let tappedItemRow = indexPath.row
        let menu = Menu.allCases[tappedItemSection]
        guard let itemDetail = sideDishViewModel.didFetchItemDatailHash(with: menu, sequence: tappedItemRow) else {
            return
        }
        
        guard let targetVC = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController else {
            return
        }
        
        targetVC.depend2(detailViewModel: DIContainer.createDI2())
        targetVC.setItemInfo(from: itemDetail)
        targetVC.sideDishTitle = itemDetail.title
        targetVC.badges = itemDetail.badge
        targetVC.detailHash = itemDetail.detailHash
        targetVC.nPrice = itemDetail.nPrice
        targetVC.sPrice = itemDetail.sPrice
        self.navigationController?.pushViewController(targetVC, animated: true)
    }
}
