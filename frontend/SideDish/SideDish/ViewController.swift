//
//  ViewController.swift
//  SideDish
//
//  Created by sonjuhyeong on 2021/04/19.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sideDishCollectionView: UICollectionView!
    
    private var dataSource = MainDiffableDataSource()
    private var menusViewModel = MenusViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(sendMenuList), name: MenusViewModel.changeMenu, object: menusViewModel)
        configureCollectionView()
        menusViewModel.fetchData()
    }
    
    private func configureCollectionView() {
        let nibName = UINib(nibName: "MenuCell", bundle: .none)
        sideDishCollectionView.register(nibName, forCellWithReuseIdentifier: "menuCell")
        
        let nibHeaderName = UINib(nibName: "MenuHeaderView", bundle: .none)
        sideDishCollectionView.register(nibHeaderName, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "menuHeaderView")
        
        self.dataSource.setupDataSource(collectionView: self.sideDishCollectionView)
    }
    
    @objc private func sendMenuList() {
        self.dataSource.applySnapshot(main: menusViewModel.giveMenus(section: .main), soup: menusViewModel.giveMenus(section: .soup), side: menusViewModel.giveMenus(section: .side))
    }
}
