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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let mainDTO = JSONManager.decode(MockData.mainJSON, into: DishesResponseDTO.self) else { return }
        guard let soupDTO = JSONManager.decode(MockData.soupJSON, into: DishesResponseDTO.self) else { return }
        guard let sideDTO = JSONManager.decode(MockData.sideJSON, into: DishesResponseDTO.self) else { return }
        let main = mainDTO.toDomain()
        let soup = soupDTO.toDomain()
        let side = sideDTO.toDomain()
        
        mainDelegate = CollectionViewDelegate()
        mainDataSource = CollectionViewDataSource(allDishes: [main, soup, side])
        
        dishCollectionView.delegate = mainDelegate
        dishCollectionView.dataSource = mainDataSource
        
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

