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
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    static var nib: UINib {
        return UINib(nibName: identifer, bundle: nil)
    }
    
    var banchan: Banchan? {
        didSet{
            guard let url = URL(string: "\(banchan!.image)"),
                  let data = try? Data(contentsOf: url) else {
                return
            }
            
            imageView.image = UIImage(data: data)
            titleLabel.text = banchan?.title
            descriptionLabel.text = banchan?.description
            netPriceLabel.text = "\(banchan?.netPrice ?? "")"
            salePriceLabel.text = "\(banchan?.salePrice ?? "")"
            priceTypeLabel.text = "\(banchan?.badge ?? [])"
        }
    }

}
