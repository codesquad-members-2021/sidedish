//
//  CollectionViewDataSource.swift
//  BanchanCode
//
//  Created by Song on 2021/04/20.
//

import UIKit

class MainPageCollectionViewDataSource: NSObject, UICollectionViewDataSource {
    var viewModels: [DishesViewModel]!
    private let networkManager = NetworkManager()
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return viewModels.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModels[section].getNumberOfItems()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DishCell.reuseIdentifier, for: indexPath) as! DishCell
        let dishesItemViewModel = viewModels[indexPath.section].items.value[indexPath.row]
        cell.fill(with: dishesItemViewModel)
        networkManager.performDataRequest(urlString: dishesItemViewModel.dish.imageURL) { imageData in
            DispatchQueue.main.async {
                cell.thumbnailImageView.image = UIImage(data: imageData)
            }
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: SectionHeaderView.reuseIdentifier, for: indexPath) as! SectionHeaderView
        headerView.fill(with: viewModels[indexPath.section])
        headerView.countOfMenus = viewModels[indexPath.section].getNumberOfItems()        
        return headerView
    }
}
