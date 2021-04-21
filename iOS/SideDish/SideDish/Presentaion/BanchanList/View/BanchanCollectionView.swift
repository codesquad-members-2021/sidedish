//
//  BanchanCollectionView.swift
//  SideDish
//
//  Created by 지북 on 2021/04/21.
//

import UIKit

class BanchanCollectionView: UICollectionView {
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
        configure()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configure()
    }
    
    private func configure() {
        self.register(BanchanCustomCell.nib, forCellWithReuseIdentifier: BanchanCustomCell.identifer)
        self.register(BanchanCustomCellHeader.nib, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: BanchanCustomCellHeader.identifier)
    }
    
}
