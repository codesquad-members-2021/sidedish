//
//  ViewController.swift
//  sidedish
//
//  Created by 박정하 on 2021/04/19.
//

import UIKit
import Combine

class MainViewController: UIViewController {
    @IBOutlet weak var menuTableView: UITableView!
    
    private let tableViewDataSource : MainTableViewDataSource
    private let tableViewDelegate : MainTableViewDelegate
    private let mainMenuViewModel : MenuCellViewModel
    
    private var subscription = Set<AnyCancellable>()

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        self.mainMenuViewModel = MenuCellViewModel()
        self.tableViewDataSource = MainTableViewDataSource(menucellViewModel: mainMenuViewModel)
        self.tableViewDelegate = MainTableViewDelegate(viewModel: mainMenuViewModel)
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        self.mainMenuViewModel = MenuCellViewModel()
        self.tableViewDataSource = MainTableViewDataSource(menucellViewModel: mainMenuViewModel)
        self.tableViewDelegate = MainTableViewDelegate(viewModel: mainMenuViewModel)
        super.init(coder: coder)
    }

    func bind() {
        mainMenuViewModel.$dishes
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { _ in}, receiveValue:{ [weak self] _ in self?.menuTableView.reloadData() })
            .store(in: &self.subscription)
    }
    
    override func loadView() {
        super.loadView()
        self.menuTableView.dataSource = tableViewDataSource
        self.menuTableView.delegate = tableViewDelegate
        mainMenuViewModel.configureMainmenuBoard()
        bind()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

