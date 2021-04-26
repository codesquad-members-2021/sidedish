//
//  DishCell.swift
//  BanchanCode
//
//  Created by Song on 2021/04/20.
//

import UIKit
import Alamofire

class DishCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var discountPriceLabel: UILabel!
    @IBOutlet weak var originalPriceLabel: UILabel!
    @IBOutlet weak var badgeBackgroundView: UIView!
    @IBOutlet weak var badgeLabel: UILabel!
    
    static let reuseIdentifier = String(describing: DishCell.self)
    var viewModel: DishesListItemViewModel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        thumbnailImageView.layer.masksToBounds = true
        thumbnailImageView.layer.cornerRadius = 5.0
        
        badgeBackgroundView.layer.masksToBounds = true
        badgeBackgroundView.layer.cornerRadius = 5.0
    }
    
    func fill(with viewModel: DishesListItemViewModel) {
        self.viewModel = viewModel
        
        updateThumbImage { imageData in
            DispatchQueue.main.async {
                self.thumbnailImageView.image = UIImage(data: imageData)
            }
        }
        nameLabel.text = viewModel.name
        descriptionLabel.text = viewModel.description
        let prices = viewModel.prices
        let originalPrice = prices[0]
        if prices.count > 1 {
            let discountPrice = prices[1]
            originalPriceLabel.attributedText = "\(originalPrice)원".strikethrough()
            discountPriceLabel.text = "\(discountPrice)원"
        } else {
            discountPriceLabel.text = "\(originalPrice)원"
            originalPriceLabel.text = ""
        }
        let badges = viewModel.badges
        if badges.count > 0 {
            badgeLabel.text = badges[0]
        }
    }
    
    func updateThumbImage(completion: @escaping (Data) -> Void) {
        thumbnailImageView.image = nil
        
        AF.request(viewModel.imageURL, method: .get)
            .validate(statusCode: 200..<300)
            .responseData { (response) in
                switch response.result {
                case .success(let data):
                    completion(data)
                case .failure(let error):
                    print(error.localizedDescription)
                    break
                }
            }
    }
}
