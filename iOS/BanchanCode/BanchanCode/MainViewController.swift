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
        mainDelegate = CollectionViewDelegate()
        mainDataSource = CollectionViewDataSource()
        
        dishCollectionView.delegate = mainDelegate
        dishCollectionView.dataSource = mainDataSource        
        
        registerXib()
    }
    
    private func registerXib() {
        let nibName = UINib(nibName: DishCell.identifier, bundle: nil)
        dishCollectionView.register(nibName, forCellWithReuseIdentifier: DishCell.identifier)
    }
    
    override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
        dishCollectionView.collectionViewLayout.invalidateLayout()        
    }
    
}

