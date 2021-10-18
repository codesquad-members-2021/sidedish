//
//  ViewController.swift
//  BanchanCode
//
//  Created by jinseo park on 4/20/21.
//

import UIKit
import RealmSwift

class MainPageViewController: UIViewController {
    
    //let queue = DispatchQueue(label: "section.queue")
    
    @IBOutlet weak var dishCollectionView: UICollectionView!
    private var mainPageDelegate: MainPageCollectionViewDelegate?
    private var mainPageDataSource: MainPageCollectionViewDataSource?
    private var viewModels: [DishesViewModel]!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerXib()
        
        mainPageDelegate = MainPageCollectionViewDelegate()
        mainPageDataSource = MainPageCollectionViewDataSource()
        
        let categories: [Categorizable] = [MainCategory(sectionIndex: 0),
                                           SoupCategory(sectionIndex: 1),
                                           SideCategory(sectionIndex: 2)]
        viewModels = categories.map { category in
            makeDishesViewModel(category: category)
        }                
        
        mainPageDataSource?.viewModels = viewModels
        mainPageDelegate?.viewModels = viewModels
        
        dishCollectionView.delegate = mainPageDelegate
        dishCollectionView.dataSource = mainPageDataSource
        
        viewModels.forEach { viewModel in
            bind(to: viewModel)
            viewModel.load()            
        }            
        
        //App에 저장된 RealmDB파일의 위치를 알 수 있는 함수.
        //print(Realm.Configuration.defaultConfiguration.fileURL!)
    }
    
    func makeFetchDishesUseCase() -> FetchDishesUseCase {
        return DefaultFetchDishesUseCase()
    }
    
    func makeDishesViewModel(category: Categorizable) -> DishesViewModel {
        let actions = DishesListViewModelActions(goToDishDetail: goToDishDetail)
        return DefaultDishesViewModel(fetchDishesUseCase: makeFetchDishesUseCase(), category: category, actions: actions)
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
    
    private func bind(to viewModel: DishesViewModel) {
        viewModel.category.observe(on: self) { [weak self] category in
            self?.updateSection(at: category.sectionIndex)
        }
    }
    
    private func updateSection(at index: Int) {
        DispatchQueue.main.sync {
            self.dishCollectionView.reloadSections(IndexSet(integer: index))
        }
        //queue.async {
        //    self.dishCollectionView.reloadSections(IndexSet(integer: index))
        //}
    }
    
    private func goToDishDetail(categoryName: String, dish: Dish) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let detailPageVC = storyboard.instantiateViewController(identifier: "detailPageVC") as DetailPageViewController
        detailPageVC.categoryName = categoryName
        detailPageVC.id = dish.id
        navigationController?.pushViewController(detailPageVC, animated: true)
    }
}
