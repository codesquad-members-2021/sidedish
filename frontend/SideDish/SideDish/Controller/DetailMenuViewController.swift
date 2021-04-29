//
//  DetailMenuViewController.swift
//  SideDish
//
//  Created by sonjuhyeong on 2021/04/27.
//

import UIKit
import Kingfisher

class DetailMenuViewController: UIViewController {

    private var detailHash: String?
    private var detailMenuViewModel = DetailMenuViewModel()
    private var orderViewModel = OrderViewModel()
    @IBOutlet weak var detailScrollView: DetailScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(configureViewModel), name: Notification.Name.fetchDetailMenu, object: detailMenuViewModel)
        
        self.detailScrollView.setCornerRadius()
        self.detailScrollView.setBorderWidth()
        configureThumbnailImageSize()
        configureViewModel()
        
    }

    func receive(categoryId: Int, detailHash: String) {
        self.detailMenuViewModel.send(categoryId: categoryId, detailHash: detailHash)
    }
    
    @objc func configureViewModel() {
        DispatchQueue.main.async {
            self.detailScrollView.title.text = self.detailMenuViewModel.title
            self.detailScrollView.body.text = self.detailMenuViewModel.productDescription
            self.configureBadges(verified: self.detailMenuViewModel.badges)
            self.detailScrollView.point.text = String(self.detailMenuViewModel.point)
            self.detailScrollView.deliveryInfo.text = self.detailMenuViewModel.deliveryInfo
            self.detailScrollView.deliveryFee.text = self.detailMenuViewModel.deliveryFee
            self.configureThumbnailImage(imageStringArr: self.detailMenuViewModel.thumbImages)
            self.configureDetailStackViewImage(imageStringArr: self.detailMenuViewModel.detailSection)
        }
    }
    
    func configureThumbnailImageSize() {
        let width = self.view.frame.width

        self.detailScrollView.thumbnailImageWidthConstraint.constant = width
        self.detailScrollView.thumbnailImageHeightConstraint.constant = width
    }
    
    func configureBadges(verified: [Bool]) {
        switch verified {
        case [true, false]:
            self.detailScrollView.launchingBadge.isHidden = true
        case [false, true]:
            self.detailScrollView.eventBadge.isHidden = true
        case [false, false]:
            self.detailScrollView.badgeView.isHidden = true
        default:
            return
        }
    }
    
    func configureThumbnailImage(imageStringArr: [String]) {
        let width = self.detailScrollView.thumbnailImageWidthConstraint.constant
        self.detailScrollView.thumbnailImageWidthConstraint.constant = self.detailScrollView.thumbnailImageWidthConstraint.constant * CGFloat(imageStringArr.count)
        
        for index in 0..<imageStringArr.count {
            guard let url = URL(string: imageStringArr[index]) else { return }
            let xPos: CGFloat = self.detailScrollView.thumbnailImageWidthConstraint.constant * CGFloat(index)
            let imageView = UIImageView(frame: CGRect(x: xPos, y: self.detailScrollView.thumbnailScrollView.bounds.minY, width: width, height: width))
            imageView.kf.setImage(with: url)
            self.detailScrollView.thumbnailScrollView.addSubview(imageView)
        }
    }
    
    func configureDetailStackViewImage(imageStringArr: [String]) {
        for image in imageStringArr {
            guard let url = URL(string: image) else { return }
            let imageView = UIImageView()
            imageView.widthAnchor.constraint(equalTo: imageView.heightAnchor, multiplier: 0.5).isActive = true
            imageView.kf.setImage(with: url)
            self.detailScrollView.detailStackView.addArrangedSubview(imageView)
        }
    }
    
}

