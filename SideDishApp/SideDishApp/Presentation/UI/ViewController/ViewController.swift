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
    
    var menuListViewModel: MenuListViewModel!
    private var subscriptions = Set<AnyCancellable>()
    var dataSource : UICollectionViewDiffableDataSource<Dishes,Dish>!
    let dishCollectionViewDelegate = DishCollectionViewDelegate()
    var snapshot = NSDiffableDataSourceSnapshot<Dishes,Dish>()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dishCollectionView.delegate = dishCollectionViewDelegate
        dataSource = DiffableProvider().configureDataSource(collectionView: dishCollectionView)
    }

    private func addDataToSnapshot (dishes: [Dishes]) {
        let dishesArray = dishes as Array<Dishes>
        
        guard let dishes = dishesArray.first else {
            return
        }
        self.snapshot.appendSections(dishesArray)
        self.snapshot.appendItems(dishes.dishes, toSection: dishes)
        self.dataSource.apply(self.snapshot)
    }
    
    func bind() {
        menuListViewModel.$main
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { _ in
                //error
            }, receiveValue: { mainDishes in
                self.addDataToSnapshot(dishes: mainDishes)
            })
            .store(in: &subscriptions)
        
        menuListViewModel.$soup
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { _ in
                //error
            }, receiveValue: { soupDishes in
                self.addDataToSnapshot(dishes: soupDishes)
            })
            .store(in: &subscriptions)
        
        menuListViewModel.$side
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { _ in
                //error
            }, receiveValue: { sideDishes in
                self.addDataToSnapshot(dishes: sideDishes)
            })
            .store(in: &subscriptions)
    }
    
}
