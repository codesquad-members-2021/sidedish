//
//  ViewController.swift
//  SideDishApp
//
//  Created by 오킹 on 2021/04/20.
//

import UIKit
import Toast_Swift
import Combine

class ViewController: UIViewController {

    @IBOutlet weak var dishCollectionView: UICollectionView!
    
    private let menuListViewModel = MenuListViewModel()
    private var subscriptions = Set<AnyCancellable>()
    var dataSource : UICollectionViewDiffableDataSource<Dishes,Dish>!
    
    var snapshot = NSDiffableDataSourceSnapshot<Dishes,Dish>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataSource = DiffableProvider().configureDataSource(collectionView: dishCollectionView)
        bind()
        menuListViewModel.requestDishes()
        
    }
    
    func bind() {
        menuListViewModel.$main
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { _ in
                //error
            }, receiveValue: { mainDishes in
                let mainDishesArray = mainDishes as Array<Dishes>
                
                guard let mainDishes = mainDishesArray.first else {
                    return
                }
                self.snapshot.appendSections(mainDishesArray)
                self.snapshot.appendItems(mainDishes.dishes, toSection: mainDishes)
                self.dataSource.apply(self.snapshot)
                
            })
            .store(in: &subscriptions)
        
        menuListViewModel.$soup
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { _ in
                //error
            }, receiveValue: { soupDishes in
                let soupDishesArray = soupDishes as Array<Dishes>
                
                guard let soupDishes = soupDishesArray.first else {
                    return
                }
                self.snapshot.appendSections(soupDishesArray)
                self.snapshot.appendItems(soupDishes.dishes, toSection: soupDishes)
                self.dataSource.apply(self.snapshot)
            })
            .store(in: &subscriptions)
        
        menuListViewModel.$side
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { _ in
                //error
            }, receiveValue: { sideDishes in
                let sideDishesArray = sideDishes as Array<Dishes>
                
                guard let sideDishes = sideDishesArray.first else {
                    return
                }
                self.snapshot.appendSections(sideDishesArray)
                self.snapshot.appendItems(sideDishes.dishes, toSection: sideDishes)
                self.dataSource.apply(self.snapshot)
            })
            .store(in: &subscriptions)
    }
    
    
}

