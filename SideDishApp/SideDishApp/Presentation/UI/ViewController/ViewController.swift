//
//  ViewController.swift
//  SideDishApp
//
//  Created by 오킹 on 2021/04/20.
//

import UIKit
import Combine

class ViewController: UIViewController {

    let menuListViewModel = MenuListViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuListViewModel.fetchDishes()
    }
}

