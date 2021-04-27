//
//  DiffableProvider.swift
//  SideDishApp
//
//  Created by 이다훈 on 2021/04/22.
//

import UIKit
import Toast_Swift

class DiffableProvider  {
    
    private var toasterCloser = Dictionary<Int, () -> Void>()
    
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
        let cell = collectionView.dequeueConfiguredReusableCell(using: cellRegistration(), for: indexPath, item: dishData)
        
        return cell
    }
    
    func cellRegistration() -> UICollectionView.CellRegistration<DishCell, Dish> {
        let cellRegistration = UICollectionView.CellRegistration<DishCell,Dish>.init(cellNib: UINib.init(nibName: DishCell.reuseIdentifier, bundle: nil), handler: { cell, indexPath, dishData in
            
            DispatchQueue.main.async {
                cell.dishImage.layer.cornerRadius = 15
                cell.dishImage.image = self.createImage(url: dishData.image)
            }
            DispatchQueue.main.async {
                cell.title.text = "\(dishData.title)"
                cell.body.text = "\(dishData.description)"
                
                cell.charge.attributedText = self.convertCharge(normal: dishData.normalPrice, selling: dishData.sellingPrice)
                
                self.removeResidualBadges(stackView: cell.eventStackView)
                if let badgeArray = self.createBadges(badgeString: dishData.badge) {
                    for badge in badgeArray {
                        cell.eventStackView.addArrangedSubview(badge)
                    }
                }
            }
            
        })
        
        return cellRegistration
    }
    
    private func configureHeader(dataSource: UICollectionViewDiffableDataSource<Dishes,Dish>) -> UICollectionView.SupplementaryRegistration
    <UICollectionViewListCell> {
        let headerRegistration = UICollectionView.SupplementaryRegistration
        <UICollectionViewListCell>(elementKind: UICollectionView.elementKindSectionHeader) {
            [unowned self] (headerView, elementKind, indexPath) in
            
            let headerItem = dataSource.snapshot().sectionIdentifiers[indexPath.section]
            
            var configuration = headerView.defaultContentConfiguration()
            configuration.text = headerItem.name
            
            configuration.textProperties.font = .boldSystemFont(ofSize: 22)
            configuration.textProperties.color = .black
            
            headerView.backgroundColor = .white
            
            self.addCloser(headerSection: headerView, sectionData: headerItem)
            
            let tap = UITapGestureRecognizer(target: self, action: #selector(handleTapGesture(recognizer:)))
            headerView.addGestureRecognizer(tap)
            headerView.contentConfiguration = configuration
        }
        return headerRegistration
    }
    
    private func addCloser(headerSection: UIView, sectionData: Dishes) {
        self.toasterCloser[headerSection.hash] = {
            guard let mainView = UIApplication.shared.windows[0].rootViewController?.view else {
                return
            }
            let message = "상품 \(sectionData.dishes.count)개 있어요!"
            
            mainView.hideAllToasts()
            mainView.makeToast(message, duration: 1.0, point: CGPoint(x: mainView.center.x , y: mainView.center.y / 2), title: nil, image: nil, style: ToastManager.shared.style, completion: nil)
        }
    }
    
    private func removeResidualBadges(stackView : UIStackView) {
        for subView in stackView.subviews {
            stackView.removeArrangedSubview(subView)
            subView.removeFromSuperview()
        }
    }
    
    private func createBadges(badgeString: String) -> [UILabel]? {
        if badgeString == "" {
            return nil
        }
        
        let stringArray = badgeString.components(separatedBy: ",")
        var returnLabels = [UILabel]()
        
        for string in stringArray {
            returnLabels.append(self.createEventLabel(text: string))
        }
        
        return returnLabels
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
    
    @objc private func handleTapGesture(recognizer: UITapGestureRecognizer) {
        guard let targetHeader = recognizer.view else {
            return
        }
        
        guard let toaster = toasterCloser.first(where: {
            $0.key == targetHeader.hash
        }) else {
            return
        }
        toaster.value()
    }
    
}
