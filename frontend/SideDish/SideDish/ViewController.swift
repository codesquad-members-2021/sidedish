//
//  ViewController.swift
//  SideDish
//
//  Created by sonjuhyeong on 2021/04/19.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sideDishCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nibName = UINib(nibName: "MenuCell", bundle: .none)
        sideDishCollectionView.register(nibName, forCellWithReuseIdentifier: "menuCell")
        sideDishCollectionView.dataSource = self
        sideDishCollectionView.delegate = self
    }


}

extension ViewController: UICollectionViewDelegate {
    
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "menuCell", for: indexPath) as?  MenuCell else {
            return UICollectionViewCell()
        }
        return cell
    }
}
