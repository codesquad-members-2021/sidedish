//
//  BanchanCustomCell.swift
//  SideDish
//
//  Created by 심영민 on 2021/04/20.
//

import UIKit

class BanchanCustomCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var netPriceLabel: UILabel!
    @IBOutlet weak var salePriceLabel: UILabel!
    @IBOutlet weak var priceTypeLabel: UILabel!
    
    static let identifer = "BanchanCustomCell"
    
    static var nib: UINib {
        return UINib(nibName: identifer, bundle: nil)
    }
    
    var banchan: Banchan? {
        didSet{
            loadImages(imgURL: banchan?.image ?? "")
            titleLabel.text = banchan?.title
            descriptionLabel.text = banchan?.description
            netPriceLabel.text = "1000"
            salePriceLabel.text = "2000"
            priceTypeLabel.text = "3000"
        }
    }
    
    private func loadImages(imgURL: String) {
        DispatchQueue.global().async {
            FetchImageUseCase.fetch(network: NetworkSerivce.shared,
                                    imgURL: self.banchan?.image ?? "") { (data) in
                guard let data = data else {
                    return
                }
                DispatchQueue.main.async {
                    self.imageView.image = UIImage(data: data)
                }
            }
        }
    }
}
