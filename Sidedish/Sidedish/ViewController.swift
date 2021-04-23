//
//  ViewController.swift
//  Sidedish
//
//  Created by Issac on 2021/04/19.
//

import UIKit
import Combine
import Toaster
import Alamofire

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    var itemViewModel: ItemViewModel!
    var headerViewModel: HeaderViewModel!
    var fetchItemSubscription = Set<AnyCancellable>()
    var fetchImageSubscription = Set<AnyCancellable>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        
        self.itemViewModel = ItemViewModel()
        self.headerViewModel = HeaderViewModel()
        self.itemViewModel.$items
            .receive(on: DispatchQueue.main)
            .sink { [weak self] _ in
                self?.collectionView.reloadSections(IndexSet(integer: 0))
                self?.itemViewModel.fetchImage()
            }.store(in: &fetchItemSubscription)
        
        self.itemViewModel.$images
            .receive(on: DispatchQueue.main)
            .sink { [weak self] (imageDatas) in
                self?.collectionView.reloadSections(IndexSet(integer: 0))
            }.store(in: &fetchImageSubscription)
        
        self.itemViewModel.errorHandler = { error in
            Toast(text: error).show()
        }
        
        self.itemViewModel.fetchItems()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.itemViewModel.items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ItemCollectionViewCell.identifier, for: indexPath) as? ItemCollectionViewCell else {
            return ItemCollectionViewCell()
        }
        let item = self.itemViewModel.items[indexPath.row]
        
        let priceString = item.nPrice == nil ? "" : "\(item.nPrice ?? "")원"

        let badge = handleBadge(badge: item.badge)
        cell.configure(model: item, nPrice: priceString, badge: badge)
        
        guard let data = self.itemViewModel.images[indexPath.row] else { return cell }
        cell.configure(data: data)

        return cell
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return self.headerViewModel.titles.count
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader,
                                                                     withReuseIdentifier: HeaderCollectionReusableView.identifier,
                                                                     for: indexPath) as! HeaderCollectionReusableView
        let tapRecognizer = TapToastGestureRecognize(target: self, action: #selector(makingHeaderToast(_:)))
        tapRecognizer.title = headerViewModel.titles[indexPath.section]
        tapRecognizer.countText = "\(itemViewModel.items.count)개 상품이 등록되어 있습니다."
        header.addGestureRecognizer(tapRecognizer)
        
        header.title.text = headerViewModel.titles[indexPath.section]
        header.countLabel.text = "\(itemViewModel.items.count)개 상품이 등록되어 있습니다."
        return header
    }
    
    @objc func makingHeaderToast(_ sender: TapToastGestureRecognize) {
        let font = UIFont.systemFont(ofSize: 16)
        let attributes: [NSAttributedString.Key: Any] = [.font: font]
        let attributedQuote = NSAttributedString(string: "\(sender.title)\n\(sender.countText)", attributes: attributes)
        Toast(attributedText: attributedQuote).show()
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width, height: 130)
    }
    
    
    
}

extension ViewController {
    func handleBadge(badge: [String]?) -> [Bool] {
        var isHiddenBadges = [true, true]
        if badge != nil {
            isHiddenBadges[0] = badge!.contains("이벤트특가") ? false : true
            isHiddenBadges[1] = badge!.contains("론칭특가") ? false : true
        }
        return isHiddenBadges
    }
}
