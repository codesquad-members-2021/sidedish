//
//  DetailViewController.swift
//  Side-dish
//
//  Created by 조중윤 on 2021/04/22.
//

import UIKit
import Combine

class DetailViewController: UIViewController {
    var detailHash: String?
    private var cancellable = Set<AnyCancellable>()
    private var detailViewModel: DetailViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = false
        
        if let safeDetailViewModel = detailViewModel {
            self.detailViewModel.request(with: detailHash ?? "")
            self.detailViewModel.didFetchDetails { (itemDetail) in
//                print(itemDetail)
            }
        } else {
            print("No Detail View Model in DeailViewController")
        }
    }
    
    func depend2(detailViewModel: DetailViewModel) {
        self.detailViewModel = detailViewModel
        print("Dependency injected")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
    }
}
