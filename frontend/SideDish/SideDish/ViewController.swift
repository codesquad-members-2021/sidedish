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
    private var mainMenus = Menus()
    private var soupMenus = Menus()
    private var sideMenus = Menus()
    
    
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
                self.mainMenus.add(menuList: data.body)
                self.putData(menu: self.mainMenus.giveMenu(), section: .main)
            case.failure(let error):
                print(error.localizedDescription)
            }
        })
    }
    
    private func loadSoup() {
        DataTaskManager.get(url: .soup, completion: { (result) in
            switch result {
            case .success(let data):
                self.soupMenus.add(menuList: data.body)
                self.putData(menu: self.soupMenus.giveMenu(), section: .soup)
            case.failure(let error):
                print(error.localizedDescription)
            }
        })
    }
    
    private func loadSide() {
        DataTaskManager.get(url: .side, completion: { (result) in
            switch result {
            case .success(let data):
                self.sideMenus.add(menuList: data.body)
                self.putData(menu: self.sideMenus.giveMenu(), section: .side)
            case.failure(let error):
                print(error.localizedDescription)
            }
        })
    }
    
    private func putData(menu: [Menu]?, section: MainDiffableDataSource.sectionTitle) {
        guard let main = menu else { return }
        self.dataSource.applySnapshot(menu: main, section: section)
    }
}
