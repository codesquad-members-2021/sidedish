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
    
    // MARK: - Value Types
    typealias DataSource = UICollectionViewDiffableDataSource<Section, Card>
    typealias Snapshot = NSDiffableDataSourceSnapshot<Section, Card>
    
    // MARK: - Properties
    var sections = Section.allSections
    
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
        return sections.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cardCell", for: indexPath) as! CardCell
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        // header의 title을 지정
        guard let headerView = collectionView.dequeueReusableSupplementaryView(
                ofKind: kind,
                withReuseIdentifier: "\(SectionHeaderReusableView.self)",
                for: indexPath) as? SectionHeaderReusableView
        else {
            return SectionHeaderReusableView()
        }
        let searchTerm = sections[indexPath.section]
        headerView.label.text = searchTerm.title
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
