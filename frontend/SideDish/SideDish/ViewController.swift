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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureCollectionView()
        loadCard()
    }
    
    private func configureCollectionView() {
        let nibName = UINib(nibName: "MenuCell", bundle: .none)
        sideDishCollectionView.register(nibName, forCellWithReuseIdentifier: "menuCell")
        self.dataSource.setupDataSource(collectionView: self.sideDishCollectionView)
    }
    
    private func loadCard() {
        DataTaskManager.get(completion: { (result) in
            DispatchQueue.global().async {
                switch result {
                case .success(let data):
                    self.menus.add(menuList: data.body)
                    self.putData()
                case.failure(let error):
                    print(error.localizedDescription)
                }
            }
        })
    }
    
    private func putData() {
        self.dataSource.applySnapshot(data: menus.giveMenu())
    }

}
