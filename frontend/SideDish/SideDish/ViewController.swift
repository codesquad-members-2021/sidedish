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
    private var menus = Menus()
    private var menusViewModel = MenusViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureCollectionView()
        loadMain()
        loadSoup()
        loadSide()
    }
    
    private func configureCollectionView() {
        let nibName = UINib(nibName: "MenuCell", bundle: .none)
        sideDishCollectionView.register(nibName, forCellWithReuseIdentifier: "menuCell")
        
        let nibHeaderName = UINib(nibName: "HeaderView", bundle: .none)
        sideDishCollectionView.register(nibHeaderName, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "headerView")
        
        self.dataSource.setupDataSource(collectionView: self.sideDishCollectionView)
    }
    
    private func loadMain() {
        DataTaskManager.get(url: .main, completion: { (result) in
            switch result {
            case .success(let data):
                self.menus.add(menuList: data.body, section: .main)
                self.menusViewModel.add(menuList: self.menus.giveMenu(section: .main), section: .main)
                self.putData(menu: self.menusViewModel.giveMenus(section: .main), section: .main)
            case.failure(let error):
                print(error.localizedDescription)
            }
        })
    }
    
    private func loadSoup() {
        DataTaskManager.get(url: .soup, completion: { (result) in
            switch result {
            case .success(let data):
                self.menus.add(menuList: data.body, section: .soup)
                self.menusViewModel.add(menuList: self.menus.giveMenu(section: .soup), section: .soup)
                self.putData(menu: self.menusViewModel.giveMenus(section: .soup), section: .soup)            case.failure(let error):
                print(error.localizedDescription)
            }
        })
    }
    
    private func loadSide() {
        DataTaskManager.get(url: .side, completion: { (result) in
            switch result {
            case .success(let data):
                self.menus.add(menuList: data.body, section: .side)
                self.menusViewModel.add(menuList: self.menus.giveMenu(section: .side), section: .side)
                self.putData(menu: self.menusViewModel.giveMenus(section: .side), section: .side)            case.failure(let error):
                print(error.localizedDescription)
            }
        })
    }
    
    private func putData(menu: [MenuViewModel]?, section: MainDiffableDataSource.sectionTitle) {
        guard let menu = menu else { return }
        self.dataSource.applySnapshot(menu: menu, section: section)
    }
}
