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
//        sideDishCollectionView.register(nibHeaderName, forCellWithReuseIdentifier: "headerView")
        sideDishCollectionView.register(nibHeaderName, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "headerView")
        
        self.dataSource.setupDataSource(collectionView: self.sideDishCollectionView)
    }
    
    private func loadMain() {
        DataTaskManager.get(url: .main, completion: { (result) in
            DispatchQueue.global().async {
                switch result {
                case .success(let data):
                    self.mainMenus.add(menuList: data.body)
                    self.putData()
                case.failure(let error):
                    print(error.localizedDescription)
                }
            }
        })
    }
    
    private func loadSoup() {
        DataTaskManager.get(url: .soup, completion: { (result) in
            DispatchQueue.global().async {
                switch result {
                case .success(let data):
                    self.soupMenus.add(menuList: data.body)
                    self.putData()
                case.failure(let error):
                    print(error.localizedDescription)
                }
            }
        })
    }
    
    private func loadSide() {
        DataTaskManager.get(url: .side, completion: { (result) in
            DispatchQueue.global().async {
                switch result {
                case .success(let data):
                    self.sideMenus.add(menuList: data.body)
                    self.putData()
                case.failure(let error):
                    print(error.localizedDescription)
                }
            }
        })
    }
    
    private func putData() {
        guard let main = mainMenus.giveMenu(), let soup = soupMenus.giveMenu(), let side = sideMenus.giveMenu() else { return }
        self.dataSource.applySnapshot(main: main, soup: soup, side: side)
    }

}
