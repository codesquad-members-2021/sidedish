//
//  ViewController.swift
//  BanchanCode
//
//  Created by jinseo park on 4/20/21.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var dishCollectionView: UICollectionView!
    private var mainDelegate: CollectionViewDelegate?
    private var mainDataSource: CollectionViewDataSource?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainDelegate = CollectionViewDelegate()
        mainDataSource = CollectionViewDataSource()
        
        let mainViewModel = makeDishesListViewModel()
        let soupViewModel = makeDishesListViewModel()
        let sideViewModel = makeDishesListViewModel()
        
        mainViewModel.showDishList(category: MainCategory())
        soupViewModel.showDishList(category: SoupCategory())
        sideViewModel.showDishList(category: SideCategory())
        
        mainDataSource?.viewModels = [mainViewModel, soupViewModel, sideViewModel]
        
        dishCollectionView.delegate = mainDelegate
        dishCollectionView.dataSource = mainDataSource
        
        bind(to: mainViewModel)
        bind(to: soupViewModel)
        bind(to: sideViewModel)
        
        registerXib()
    }
    
    func makeFetchDishesUseCase() -> FetchDishesUseCase {
        return DefaultFetchDishesUseCase()
    }
    
    func makeDishesListViewModel() -> DishesListViewModel {
        return DefaultDishesListViewModel(fetchDishesUseCase: makeFetchDishesUseCase())
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
