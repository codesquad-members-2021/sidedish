//
//  ViewController.swift
//  sidedish
//
//  Created by 박정하 on 2021/04/19.
//

import UIKit
import Combine

protocol ViewChangable {
    func pushNextView() -> Void
}

class MainViewController: UIViewController, ViewChangable {
    
    func pushNextView() {
        performSegue(withIdentifier: "detailView", sender: .none)
    }
    
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
    
    private func bind() {
        mainMenuViewModel.$dishes
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { _ in}, receiveValue:{ [weak self] _ in self?.menuTableView.reloadData() })
            .store(in: &self.subscription)
        
        mainMenuViewModel.configureAlertMessage { (error) in
            self.showAlert(message: error)
        }
    }
    
    private func showAlert(message : String){
        DispatchQueue.main.async {
            self.present(AlertMessageController.makeAlertController(error: message), animated: true)
        }
    }
    
    override func loadView() {
        super.loadView()
        self.tableViewDelegate.set(delegate: self)
        self.menuTableView.dataSource = tableViewDataSource
        self.menuTableView.delegate = tableViewDelegate
        bind()
        mainMenuViewModel.configureMainmenuBoard()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

