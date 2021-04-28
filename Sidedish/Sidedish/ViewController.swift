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
        self.loadItems()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
    }
    
    private func loadItems() {
        Category.allCases.forEach { (category) in
            self.itemViewModel.fetchItems(of: category)
        }
    }
    
    private func bind() {
        self.itemViewModel.reloadHandler = { category in
            DispatchQueue.main.async {
                self.collectionView.reloadSections(IndexSet(integer: category.index))
            }
        }
        
        self.itemViewModel.errorHandler = { error in
            Toast(text: error).show()
        }
        
        self.itemViewModel.imageReloadHandler = { index in
            self.collectionView.reloadItems(at: [IndexPath(index: index)])
        }
    }
    
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        guard let category = Category.init(rawValue: section) else { return 0 }
        guard let item = self.itemViewModel.items[category.description] else { return 0 }
        return item.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ItemCollectionViewCell.identifier, for: indexPath) as? ItemCollectionViewCell else {
            return ItemCollectionViewCell()
        }
        
        guard let category = Category.init(rawValue: indexPath.section) else { return cell }
        guard let items = self.itemViewModel.items[category.description] else { return cell }
        let item = items[indexPath.row]
        let badge = handleBadge(badge: item.badge)
        cell.configure(model: item, nPrice: item.nPrice, badge: badge)
        guard let data = item.imageData else { return cell }
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
        header.delegate = self
        guard let category = Category(rawValue: indexPath.section) else { return header }
        guard let items = self.itemViewModel.items[category.description] else { return header }
        header.title.text = self.headerViewModel.titles[indexPath.section]
        header.countLabel.text = "\(items.count)개 상품이 등록되어 있습니다"
        return header
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.row, indexPath.section)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let cell = sender as? ItemCollectionViewCell, let indexPath = self.collectionView.indexPath(for: cell) {
            guard let category = Category(rawValue: indexPath.section) else { return }
            guard let items = self.itemViewModel.items[category.description] else { return }
            let detailHash = items[indexPath.row].detailHash
            let vc = segue.destination as? DetailViewController
            let networking = SidedishNetworkCenter()
            let sidedishProcessing = SidedishProcessing(networkable: networking)
            vc?.detailViewModel = DetailViewModel(sidedishProcessable: sidedishProcessing)
            vc?.detailViewModel.fetchDetail(hash: detailHash)
        }
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width, height: 130)
    }
}

extension ViewController: HeaderClickable {
    func didClickedHeader(attributedQuote: NSAttributedString) {
        Toast(attributedText: attributedQuote).show()
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
