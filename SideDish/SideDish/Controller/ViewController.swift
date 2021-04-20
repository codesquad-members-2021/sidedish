//
//  ViewController.swift
//  SideDish
//
//  Created by 양준혁 on 2021/04/19.
//

import UIKit
import Toaster

class ViewController: UIViewController {
    
    @IBOutlet weak var cardCollectionView: UICollectionView!
    
    var sectionHeaderTitle : [String] = ["모두가 좋아하는 든든한 메인요리", "정성이 담긴 뜨끈뜨끈 국물요리", "식탁을 풍성하게 하는 정갈한 밑반찬"]
    
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
        return 2
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return sectionHeaderTitle.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cardCell", for: indexPath) as! CardCell
        cell.badgeView.isHidden = true
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        // header의 title을 지정
        guard let headerView = collectionView.dequeueReusableSupplementaryView(
                ofKind: kind,
                withReuseIdentifier: "\(HeaderView.self)",
                for: indexPath) as? HeaderView
        else {
            return HeaderView()
        }
        let searchTerm = sectionHeaderTitle[indexPath.section]
        headerView.label.text = searchTerm
        headerView.label.font = .boldSystemFont(ofSize: 22)
        
        // header의 touch event
        let touchGestureRecognizer = UITapGestureRecognizer(target:self, action:#selector(touchDetected))
        headerView.addGestureRecognizer(touchGestureRecognizer)
        
        return headerView
    }
    @objc func touchDetected(){
        let toast = Toast(text: "Hello, world!", duration: Delay.long)
        toast.show()
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 343, height: 130)
    }
}
