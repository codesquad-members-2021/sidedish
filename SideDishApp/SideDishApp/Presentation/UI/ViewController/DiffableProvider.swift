//
//  DiffableProvider.swift
//  SideDishApp
//
//  Created by 이다훈 on 2021/04/22.
//

import UIKit
import Toast_Swift

class DiffableProvider  {
    
    private let colorDictionary = ["이벤트특가" : UIColor.init(displayP3Red: 130/255, green: 211/255, blue: 45/255, alpha: 1), "론칭특가" : UIColor.init(displayP3Red: 134/255, green: 198/255, blue: 255/255, alpha: 1)]
    
    func configureDataSource(collectionView : UICollectionView) -> UICollectionViewDiffableDataSource<Dishes,Dish> {
        let dataSource = UICollectionViewDiffableDataSource<Dishes,Dish> (collectionView: collectionView, cellProvider: { collectionView, indexPath, dishData in
            
            let cell = self.configureCell(collectionView: collectionView, indexPath: indexPath, dishData: dishData)
            
            return cell
        })
        
        dataSource.supplementaryViewProvider = { [unowned self]
            (collectionView, elementKind, indexPath) -> UICollectionReusableView? in
            
            return collectionView.dequeueConfiguredReusableSupplementary(
                using: configureHeader(dataSource: dataSource), for: indexPath)
        }
        
        return dataSource
    }
    
    private func configureCell(collectionView: UICollectionView, indexPath: IndexPath, dishData: Dish) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DishCardCell.reuseIdentifier, for: indexPath) as? DishCardCell else {
            return UICollectionViewCell()
        }
        for subview in cell.eventStackView.arrangedSubviews{
            cell.eventStackView.removeArrangedSubview(subview)
        }
        
        DispatchQueue.main.async {
            cell.dishImage.image = self.createImage(url: dishData.image)
        }
        
        cell.title.text = "\(dishData.title)"
        cell.body.text = "\(dishData.description)"
        
        let badgeArray = dishData.badge.components(separatedBy: ",")
        
        for badgeText in badgeArray {
            let label = self.createEventLabel(text: badgeText)
            cell.eventStackView.addArrangedSubview(label)
        }
        
        cell.charge.attributedText = convertCharge(normal: dishData.normalPrice, selling: dishData.sellingPrice)
        
        return cell
    }
    
    private func configureHeader(dataSource: UICollectionViewDiffableDataSource<Dishes,Dish>) -> UICollectionView.SupplementaryRegistration
    <UICollectionViewListCell> {
        let headerRegistration = UICollectionView.SupplementaryRegistration
        <UICollectionViewListCell>(elementKind: UICollectionView.elementKindSectionHeader) {
            [unowned self] (headerView, elementKind, indexPath) in
            
            // Obtain header item using index path
            let headerItem = dataSource.snapshot().sectionIdentifiers[indexPath.section]
            
            // Configure header view content based on headerItem
            var configuration = headerView.defaultContentConfiguration()
            configuration.text = headerItem.name
            
            // Customize header appearance to make it more eye-catching
            configuration.textProperties.font = .boldSystemFont(ofSize: 16)
            configuration.textProperties.color = .systemBlue
            
            
            let tap = CustomTapGestureRecognizer(target: self, action: #selector(handleTapGesture(recognizer:)), dishCount: headerItem.dishes.count)
            headerView.addGestureRecognizer(tap)
            
            // Apply the configuration to header view
            headerView.contentConfiguration = configuration
        }
        return headerRegistration
    }
    
    private func createImage(url: String) -> UIImage {
        guard let imageURL = URL(string: url),
              let imageData = try? Data(contentsOf: imageURL),
              let image = UIImage(data: imageData) else
        {
            return UIImage()
        }
        return image
    }
    
    private func createEventLabel(text : String) -> UILabel {

        var label : UILabel {
            let newLabel = UILabel()
            newLabel.text = "  \(text)  "
            newLabel.clipsToBounds = true
            newLabel.layer.cornerRadius = 5
            newLabel.backgroundColor = colorDictionary[text]
            newLabel.textColor = UIColor.white
            newLabel.font = UIFont.systemFont(ofSize: 12, weight: .bold)
            
            return newLabel
        }
        
        return label
    }
    
    private func convertCharge(normal: String, selling: String) -> NSMutableAttributedString {
        let normalCharge = "\(String.insertComma(with: normal))원"
        let sellingCharge = "\(String.insertComma(with: selling))원"
        var attributedText : NSMutableAttributedString
        
        if selling != "" {
            let wholeString = normalCharge + " " + sellingCharge
            
            attributedText = wholeString.styleAsCharge(with: normalCharge, with: sellingCharge)
        } else {
            attributedText = normalCharge.styleAsCharge(with: "", with: normalCharge)
        }
        return attributedText
    }
    
    @objc private func handleTapGesture(recognizer: CustomTapGestureRecognizer) {
        guard let mainView = UIApplication.shared.windows[0].rootViewController?.view else {
            return
        }
        let message = "상품 \(recognizer.dishCount)개 있어요!"
        
        mainView.hideAllToasts()
        mainView.makeToast(message, duration: 1.0, point: CGPoint(x: mainView.center.x , y: mainView.center.y / 2), title: nil, image: nil, style: ToastManager.shared.style, completion: nil)
    }
    
}

class CustomTapGestureRecognizer: UITapGestureRecognizer {
    var dishCount : Int
    
    init(target: Any?, action: Selector?, dishCount: Int) {
        self.dishCount = dishCount
        super.init(target: target, action: action)
    }
}
