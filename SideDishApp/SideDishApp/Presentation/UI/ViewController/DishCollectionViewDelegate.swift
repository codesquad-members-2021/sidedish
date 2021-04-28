//
//  DishCollectionViewDelegate.swift
//  SideDishApp
//
//  Created by 이다훈 on 2021/04/23.
//

import UIKit

class DishCollectionViewDelegate : NSObject, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize.init(width: collectionView.bounds.width, height: 130)
    }
}
