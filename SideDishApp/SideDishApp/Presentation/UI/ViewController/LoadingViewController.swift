//
//  LoadingViewController.swift
//  SideDishApp
//
//  Created by 오킹 on 2021/04/28.
//

import UIKit

class LoadingViewController: UIViewController {
    
    private let menuListViewModel = MenuListViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
    }
    
    override func viewDidAppear(_ animated: Bool) {
        menuListViewModel.requestDishes() {
            nextPage()
        }
    }
    
    private func nextPage() {
        guard let nextPage = self.storyboard?.instantiateViewController(identifier: "ViewController") as? ViewController else {
            return
        }
        nextPage.menuListViewModel = self.menuListViewModel
        nextPage.bind()
        nextPage.modalPresentationStyle = .fullScreen
        self.present(nextPage, animated: false, completion: nil)
    }
}
