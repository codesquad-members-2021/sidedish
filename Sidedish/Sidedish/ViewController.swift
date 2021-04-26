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
    var headerViewActionHander: (() -> ())?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let networking = SidedishNetworkCenter()
        let sidedishProcessing = SidedishProcessing(networkable: networking)
        
        self.itemViewModel = ItemViewModel(sidedishProcessable: sidedishProcessing)
        self.headerViewModel = HeaderViewModel()
        self.bind()
        
        self.itemViewModel.errorHandler = { error in
            Toast(text: error).show()
        }
        
        self.itemViewModel.imageReloadHandler = { index in
            self.collectionView.reloadItems(at: [IndexPath(index: index)])
        }
        
        self.headerViewActionHander = {
            let title = self.headerViewModel.titles[0]
            let countText = "\(self.itemViewModel.items.count)개 상품이 등록되어 있습니다."
            let attributedQuote = "\(title)\n\(countText)".attributedStringOfFontSize(of: 16)
            Toast(attributedText: attributedQuote).show()
        }
        
        self.itemViewModel.fetchItems()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
    }
    
    private func bind() {
        self.itemViewModel.$items
            .receive(on: DispatchQueue.main)
            .sink { [weak self] _ in
                self?.collectionView.reloadSections(IndexSet(integer: 0))
            }.store(in: &fetchItemSubscription)
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
        let badge = handleBadge(badge: item.badge)
        cell.configure(model: item, nPrice: item.nPrice, badge: badge)
        guard let data = self.itemViewModel.items[indexPath.row].imageData else { return cell }
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
        
        let tapRecognizer = UITapGestureRecognizer(target: self,
                                                     action: #selector(makingHeaderToast(_:)))
        
        header.addGestureRecognizer(tapRecognizer)
        return header
    }
    
    @objc func makingHeaderToast(_ sender: UITapGestureRecognizer) {
        self.headerViewActionHander?()
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
            isHiddenBadges[0] = badge!.contains(Badge.event.description) ? false : true
            isHiddenBadges[1] = badge!.contains(Badge.launch.description) ? false : true
        }
        return isHiddenBadges
    }
}
