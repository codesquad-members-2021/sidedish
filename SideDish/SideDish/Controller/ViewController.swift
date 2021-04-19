//
//  ViewController.swift
//  SideDish
//
//  Created by 양준혁 on 2021/04/19.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cardCollectionView: UICollectionView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.cardCollectionView.dataSource = self
        registerNIB()
    }
    
    func registerNIB() {
        let nibName = UINib(nibName: "CardCell", bundle: nil)
        cardCollectionView.register(nibName, forCellWithReuseIdentifier: "cardCell")
    }

}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cardCell", for: indexPath) as! CardCell
        return cell
    }
    
    
}
