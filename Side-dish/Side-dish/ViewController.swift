//
//  ViewController.swift
//  Side-dish
//
//  Created by HOONHA CHOI on 2021/04/19.
//

import UIKit
import Combine

class ViewController: UIViewController {
    
    @IBOutlet weak var SideDishCollectionView: UICollectionView!
    private var cancellable = Set<AnyCancellable>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        SideDishCollectionView.register(FoodCardCell.nib, forCellWithReuseIdentifier: FoodCardCell.identifier)
        SideDishCollectionView.dataSource = self
        SideDishCollectionView.delegate = self
    
        NetworkManager().getResource(path: .main, method: .get).sink { (complete) in
            if case .failure(let error) = complete {
                print(error)
            }
        } receiveValue: { (category) in
            print(category)
        }.store(in: &cancellable)

    }

}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FoodCardCell.identifier, for: indexPath) as! FoodCardCell
        return cell
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 130)
    }
}
