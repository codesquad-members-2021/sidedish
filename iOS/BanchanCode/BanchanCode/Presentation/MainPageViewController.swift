//
//  ViewController.swift
//  BanchanCode
//
//  Created by jinseo park on 4/20/21.
//

import UIKit

class MainPageViewController: UIViewController {
    
    @IBOutlet weak var dishCollectionView: UICollectionView!
    private var mainPageDelegate: MainPageCollectionViewDelegate?
    private var mainPageDataSource: MainPageCollectionViewDataSource?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainPageDelegate = MainPageCollectionViewDelegate()
        mainPageDataSource = MainPageCollectionViewDataSource()
        
        let categories: [Categorizable] = [MainCategory(), SoupCategory(), SideCategory()]
        
        let viewModels = categories.map { category in
            makeDishesListViewModel(category: category)
        }
        
        mainPageDataSource?.viewModels = viewModels
        
        dishCollectionView.delegate = mainPageDelegate
        dishCollectionView.dataSource = mainPageDataSource
        
        viewModels.forEach { viewModel in
            viewModel.load()
            bind(to: viewModel)
        }
        
        registerXib()
    }
    
    func makeFetchDishesUseCase() -> FetchDishesUseCase {
        return DefaultFetchDishesUseCase()
    }
    
    func makeDishesListViewModel(category: Categorizable) -> DishesListViewModel {
        let category = Observable(category)
        return DefaultDishesListViewModel(fetchDishesUseCase: makeFetchDishesUseCase(), category: category)
    }
    
    private func registerXib() {
        let dishNib = UINib(nibName: DishCell.reuseIdentifier, bundle: nil)
        dishCollectionView.register(dishNib, forCellWithReuseIdentifier: DishCell.reuseIdentifier)
        
        let headerNib = UINib(nibName: SectionHeaderView.reuseIdentifier, bundle: nil)
        dishCollectionView.register(headerNib, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: SectionHeaderView.reuseIdentifier)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewDidLayoutSubviews()
        dishCollectionView.collectionViewLayout.invalidateLayout()
    }
    
    private func bind(to viewModel: DishesListViewModel) {
        viewModel.category.observe(on: self) { [weak self] _ in self?.updateItems() }
        viewModel.items.observe(on: self) { [weak self] _ in self?.updateItems() }
    }
    
    private func updateItems() {
        dishCollectionView.reloadData()
    }
}
