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
            }.store(in: &fetchItemSubscription)
        
        self.itemViewModel.errorHandler = { error in
            Toast(text: error).show()
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
    }
    
    func downloadImage(from url: URL, to cell: ItemCollectionViewCell) {
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data, error == nil else {
                print(error!.localizedDescription)
                return
            }
            DispatchQueue.main.async {
                cell.dishImage.image = UIImage(data: data)
            }
        }.resume()
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
        
        guard let url = URL(string: item.image) else { return ItemCollectionViewCell() }
        downloadImage(from: url, to: cell)
        cell.dishName.text = item.title
        cell.dishDescription.text = item.description
        cell.sellingPrice.text = item.sPrice
        
        
        let attributeString: NSMutableAttributedString =  NSMutableAttributedString(string: item.nPrice ?? "")
        attributeString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 2, range: NSMakeRange(0, attributeString.length))
        cell.originalPrice.attributedText = attributeString
        
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
        Toast(text: "\(sender.title)\n\(sender.countText)").show()
    }
    
    
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width, height: 130)
    }
    
    
    
}
