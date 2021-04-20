//
//  ViewController.swift
//  Side-dish
//
//  Created by HOONHA CHOI on 2021/04/19.
//

import UIKit
import Combine

class SideDishViewController: UIViewController {
    
    @IBOutlet weak var SideDishCollectionView: UICollectionView!
    private var cancellable = Set<AnyCancellable>()
    private var sideDishViewModel: SideDishViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
        SideDishCollectionView.register(FoodCardCell.nib, forCellWithReuseIdentifier: FoodCardCell.identifier)
        
        SideDishCollectionView.dataSource = self
        SideDishCollectionView.delegate = self
        
        sideDishViewModel.test { (t) in
            t.forEach { (item) in
                print(item.title)
            }
        }
        sideDishViewModel.occur { (t) in
            print("test : \(t)")
        }
    }
    
    func depend(sideDishViewModel: SideDishViewModel) {
        self.sideDishViewModel = sideDishViewModel
    }
}

extension SideDishViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FoodCardCell.identifier, for: indexPath) as! FoodCardCell
        let tempItem = Item(detailHash: "HEDFB", image: "http://public.codesquad.kr/jk/storeapp/data/bc3b777115e8377a48c7bd762fe5fdc9.jpg", alt: "[빅마마의밥친구] 비빔오징어 150g", deliveryType: [.dawnDelivery, .nationDelivery], title: "[빅마마의밥친구] 비빔오징어 150g", description: "달콤한 신야초발효액이 포인트!", nPrice: "6,900", sPrice: "6,210원", badge: [.launchingPrice, .eventPrice])
        cell.configure(item: tempItem)
        return cell
    }
}

extension SideDishViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 130)
    }
}
