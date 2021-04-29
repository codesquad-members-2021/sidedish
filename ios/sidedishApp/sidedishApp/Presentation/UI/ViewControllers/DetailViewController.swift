//
//  DetailViewController.swift
//  sidedishApp
//
//  Created by 김지선 on 2021/04/21.
//

import UIKit
import Combine

class DetailViewController: UIViewController {
    enum Section: Int, CaseIterable {
        case main
        case soup
        case side
    }
    
    private var category: String!
    private var id: Int!
    private var cancellables: Set<AnyCancellable> = []
    private var detailViewModel: DetailViewModelType!
    override func viewDidLoad() {
        super.viewDidLoad()
        detailViewModel = DetailViewModel()
        fetchData()
    }
    
    private func fetchData() {
        detailViewModel.dataChanged
            .receive(on: DispatchQueue.main)
            .sink { [weak self] _ in
                
            }
            .store(in: &cancellables)
        detailViewModel.fetchData(path: "main", path: 0)
    }

}

