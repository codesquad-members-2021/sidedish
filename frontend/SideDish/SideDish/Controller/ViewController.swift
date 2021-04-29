//
//  ViewController.swift
//  SideDish
//
//  Created by sonjuhyeong on 2021/04/19.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sideDishCollectionView: UICollectionView!
    
    private var sideDishDataSource = MainDiffableDataSource()
    private var menusViewModel = MenusViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(sendMenuList), name: Notification.Name.fetchMenu, object: menusViewModel)
        configureCollectionView()
        menusViewModel.fetchData()
    }
    
    private func configureCollectionView() {
        let nibName = UINib(nibName: "MenuCell", bundle: .none)
        sideDishCollectionView.register(nibName, forCellWithReuseIdentifier: "menuCell")
        
        let nibHeaderName = UINib(nibName: "MenuHeaderView", bundle: .none)
        sideDishCollectionView.register(nibHeaderName, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "menuHeaderView")
        self.sideDishCollectionView.delegate = self
        self.sideDishDataSource.setupDataSource(collectionView: self.sideDishCollectionView)
    }
    
    @objc private func sendMenuList() {
        self.sideDishDataSource.applySnapshot(main: menusViewModel.giveMenus(section: .main), soup: menusViewModel.giveMenus(section: .soup), side: menusViewModel.giveMenus(section: .side))
    }
}

extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let detailViewController = self.storyboard?.instantiateViewController(identifier: "detailMenuViewController") as? DetailMenuViewController, let detailHash = menusViewModel.returnHash(indexPath: indexPath), let categoryId = menusViewModel.returnCategoryId(indexPath: indexPath)  else { return }
        navigationController?.isNavigationBarHidden = false
        navigationController?.pushViewController(detailViewController, animated: true)

        detailViewController.receive(categoryId: categoryId, detailHash: detailHash)
    }
}
