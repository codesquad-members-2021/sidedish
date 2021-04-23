//
//  ViewController.swift
//  BanchanCode
//
//  Created by jinseo park on 4/20/21.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var dishCollectionView: UICollectionView!
    var mainDelegate: CollectionViewDelegate?
    var mainDataSource: CollectionViewDataSource?
    var mainDishes: [Dish]?
    var soupDishes: [Dish]?
    var sideDishes: [Dish]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainDelegate = CollectionViewDelegate()
        mainDataSource = CollectionViewDataSource(mainDishes: [], soupDishes: [], sideDishes: [])
        
        dishCollectionView.delegate = mainDelegate
        dishCollectionView.dataSource = mainDataSource
        
        NetworkManager.performRequest(urlString: "https://79129275-12cd-405a-80a6-677b968b1977.mock.pstmn.io/banchan-code/main") { (mainDishes) in
            self.mainDataSource?.load(dishes: mainDishes.toDomain())
            DispatchQueue.main.async {
                self.dishCollectionView.reloadData()
            }
        }
        NetworkManager.performRequest(urlString: "https://79129275-12cd-405a-80a6-677b968b1977.mock.pstmn.io/banchan-code/soup") { (soupDishes) in
            self.mainDataSource?.load(dishes: soupDishes.toDomain())
            DispatchQueue.main.async {
                self.dishCollectionView.reloadData()
            }
        }
        NetworkManager.performRequest(urlString: "https://79129275-12cd-405a-80a6-677b968b1977.mock.pstmn.io/banchan-code/side") { (sideDishes) in
            self.mainDataSource?.load(dishes: sideDishes.toDomain())
            DispatchQueue.main.async {
                self.dishCollectionView.reloadData()
            }
        }
        
        registerXib()
    }
    
    private func registerXib() {
        let dishNib = UINib(nibName: DishCell.identifier, bundle: nil)
        dishCollectionView.register(dishNib, forCellWithReuseIdentifier: DishCell.identifier)
        
        let headerNib = UINib(nibName: SectionHeaderView.identifier, bundle: nil)
        dishCollectionView.register(headerNib, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: SectionHeaderView.identifier)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewDidLayoutSubviews()
        dishCollectionView.collectionViewLayout.invalidateLayout()
    }
}
