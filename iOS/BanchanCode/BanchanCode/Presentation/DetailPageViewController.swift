//
//  DetailPageViewController.swift
//  BanchanCode
//
//  Created by Song on 2021/04/28.
//

import UIKit

class DetailPageViewController: UIViewController {
    
    @IBOutlet weak var thumbnailImagesScrollView: UIScrollView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var lastPriceLabel: UILabel!
    @IBOutlet weak var originalPriceLabel: UILabel!
    @IBOutlet weak var badgeBackgroundView: UIView!
    @IBOutlet weak var badgeLabel: UILabel!
    @IBOutlet weak var detailImagesStackView: UIStackView!
    @IBOutlet weak var orderButton: UIButton!
    var categoryName: String?
    var id: Int?
    var dishDetail: DishDetail?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.thumbnailImagesScrollView.isPagingEnabled = true
        badgeBackgroundView.layer.masksToBounds = true
        badgeBackgroundView.layer.cornerRadius = 5.0
        orderButton.layer.masksToBounds = true
        orderButton.layer.cornerRadius = 5.0
        
        let baseURL = "http://ec2-3-36-241-44.ap-northeast-2.compute.amazonaws.com:8080/banchan-code"
        
        guard let id = id else { return }
        guard let categoryName = categoryName else { return }
        NetworkManager().performRequestDishDetail(urlString: "\(baseURL)/\(categoryName)/\(id)") { (responseDTO) in
            self.dishDetail = responseDTO.toDomain()
            
            DispatchQueue.main.async {
                self.title = self.dishDetail?.name
                self.nameLabel.text = self.dishDetail?.name
                self.descriptionLabel.text = self.dishDetail?.description
                guard let prices = self.dishDetail?.prices else { return }
                self.lastPriceLabel.text = "\(prices[0])원"
            }
            
            //MARK: - thumbImages
            var thumbImagesViews: [UIImageView] = []
            self.dishDetail?.thumbImages.forEach { imageURL in
                NetworkManager().updateThumbImage(imageURL: imageURL) { imageData in
                    let image = UIImage(data: imageData)
                    thumbImagesViews.append(UIImageView(image: image))
                    
                    DispatchQueue.main.async {
                        self.thumbnailImagesScrollView.contentSize = CGSize(width: self.view.frame.width * CGFloat(thumbImagesViews.count),
                                                                            height: self.view.frame.width)
                        
                        (0..<thumbImagesViews.count).forEach { index in
                            thumbImagesViews[index].frame = CGRect(x: self.view.frame.width * CGFloat(index), y: 0,
                                                                   width: self.view.frame.width, height: self.view.frame.width)
                            self.thumbnailImagesScrollView.addSubview(thumbImagesViews[index])
                        }
                    }
                }
            }
            
            //MARK: - detailImages
            self.dishDetail?.detailImages.forEach { imageURL in
                NetworkManager().updateThumbImage(imageURL: imageURL) { imageData in
                    guard let image = UIImage(data: imageData) else { return }
                    let ratio = image.size.height / image.size.width

                    let imageView = UIImageView(image: image)
                    imageView.contentMode = .scaleAspectFit

                    DispatchQueue.main.async {
                        self.detailImagesStackView.addArrangedSubview(imageView)
                        imageView.translatesAutoresizingMaskIntoConstraints = false
                        imageView.heightAnchor.constraint(equalToConstant: ratio * self.view.frame.width).isActive = true
                    }
                }
            }
        }
    }
}
