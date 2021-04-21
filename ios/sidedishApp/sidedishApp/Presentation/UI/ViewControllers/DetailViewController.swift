//
//  DetailViewController.swift
//  sidedishApp
//
//  Created by 김지선 on 2021/04/21.
//

import UIKit
import Combine

class DetailViewController: UIViewController {
    private var category: String!
    private var id: Int!
    private var cancellables: Set<AnyCancellable> = []
    private var detailViewModel: DetailViewModel!
    override func viewDidLoad() {
        super.viewDidLoad()
        detailViewModel = DetailViewModel()
        fetchData()
//        detailViewModel.fetchData(path: <#T##String#>, path: <#T##Int#>)
           // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    private func fetchData() {
        detailViewModel.dataChanged
            .receive(on: DispatchQueue.main)
            .sink { [weak self] _ in
                
            }
            .store(in: &cancellables)
        //        detailViewModel.fetchData(path: self.category, path: self.id)
        detailViewModel.fetchData(path: "main", path: 0)
    }

}

