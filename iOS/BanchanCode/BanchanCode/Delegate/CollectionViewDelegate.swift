//
//  CollectionViewDelegate.swift
//  BanchanCode
//
//  Created by Song on 2021/04/20.
//

import UIKit

class CollectionViewDelegate: NSObject, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        //회전에 따라 비율을 직접 설정해서 넣는 방법이 좋을 듯해서 넣어봤습니다.
        if UIDevice.current.orientation.isLandscape {
            return CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width * 0.2)
        }else {
            return CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width * 0.379)
        }
        
    }
    
}
