//
//  CollectionViewDataSource.swift
//  BanchanCode
//
//  Created by Song on 2021/04/20.
//

import UIKit

class CollectionViewDataSource: NSObject, UICollectionViewDataSource {
    private var allDishes: [DishList]
    
    init(allDishes: [DishList]) {
        self.allDishes = allDishes
        super.init()
    }
    
    func load(dishes: DishList) {
        allDishes.append(dishes)
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return allDishes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return allDishes[section].dishes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DishCell.identifier, for: indexPath) as! DishCell
        if let dishImageUrl = URL(string: allDishes[indexPath.section].dishes[indexPath.row].imageURL) {
            if let dishImageData = try? Data(contentsOf: dishImageUrl) {
                let dishImage = UIImage(data: dishImageData)
                cell.thumbnailImageView.image = dishImage
            }
        }
        
        cell.nameLabel.text = allDishes[indexPath.section].dishes[indexPath.row].name
        cell.descriptionLabel.text = allDishes[indexPath.section].dishes[indexPath.row].description
        let prices = allDishes[indexPath.section].dishes[indexPath.row].prices
        let originalPrice = allDishes[indexPath.section].dishes[indexPath.row].prices[0]
        if prices.count > 1 {
            let discountPrice = allDishes[indexPath.section].dishes[indexPath.row].prices[1]
            cell.originalPriceLabel.text = "\(originalPrice)"
            cell.discountPriceLabel.text = "\(discountPrice)"
        } else {
            cell.discountPriceLabel.text = "\(originalPrice)"
            cell.originalPriceLabel.text = ""
        }
        let badges = allDishes[indexPath.section].dishes[indexPath.row].badges
        if badges.count > 0 {
            cell.badgeLabel.text = allDishes[indexPath.section].dishes[indexPath.row].badges[0]
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: SectionHeaderView.identifier, for: indexPath) as! SectionHeaderView
        headerView.sectionTitleLabel.text = allDishes[indexPath.section].category.getSectionTitle()
        return headerView
    }
}
