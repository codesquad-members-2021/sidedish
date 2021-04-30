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
    private var sideDishViewModel: SideDishViewModelProcotol!
    private var cancellable = Set<AnyCancellable>()
    private var dataSource : UICollectionViewDiffableDataSource<Menu, Item>!
    private var cellSize: CGFloat = 130
    private var headerSize: CGFloat = 85
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sideDishViewModel.request()
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
            ImageLoader().imageLoad(urlString: item.image).sink { (uiimage) in
                cell.setImage(with: uiimage)
            }.store(in: &self.cancellable)
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
        
        sideDishViewModel.except().sink { [weak self] (error) in
            self?.triggerAlert(by: error)
        }.store(in: &cancellable)
    }
    
    func dependInjectionViewModel(to viewModel:SideDishViewModelProcotol) {
        self.sideDishViewModel = viewModel
    }
    
    private func triggerAlert(by error : String) {
        DispatchQueue.main.async { [weak self] in
            self?.present(Alert.create(title : error),animated: true)
        }
    }
}

extension SideDishViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: cellSize)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: headerSize)
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
        
        targetVC.dependInjectionViewModel(to: DetailViewModel(sideDishUseCase: UsecaseGenerator.create(), hash: itemDetail.detailHash))
        targetVC.setItemInfo(from: itemDetail)
        
        self.navigationController?.pushViewController(targetVC, animated: true)
    }
}
