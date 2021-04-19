//
//  ViewController.swift
//  sidedish
//
//  Created by 박정하 on 2021/04/19.
//

import UIKit

class MainViewController: UIViewController {
    @IBOutlet weak var menuTableView: UITableView!
    
    private let tableViewDataSource : MainTableViewDataSource?
    private let tableViewDelegate : MainTableViewDelegate?

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        self.tableViewDataSource = nil
        self.tableViewDelegate = nil
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        self.tableViewDataSource = MainTableViewDataSource()
        self.tableViewDelegate = MainTableViewDelegate()
        super.init(coder: coder)
    }

    override func loadView() {
        super.loadView()
        self.menuTableView.dataSource = tableViewDataSource
        self.menuTableView.delegate = tableViewDelegate
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

