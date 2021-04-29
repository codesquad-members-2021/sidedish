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
    @IBOutlet weak var detailScrollView: DetailScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(configureViewModel), name: Notification.Name.fetchDetailMenu, object: detailMenuViewModel)
        
        self.detailScrollView.setCornerRadius()
        self.detailScrollView.setBorderWidth()
        configureThumbnailImageSize()
        configureViewModel()
        
        
        guard let url1 = URL(string: "http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg") else { return }
        let imageView1 = UIImageView()
        imageView1.widthAnchor.constraint(equalTo: imageView1.heightAnchor, multiplier: 0.5).isActive = true
        imageView1.kf.setImage(with: url1)
        
        guard let url2 = URL(string:  "http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0253cdebc4972fefd6b94458024fe765.jpg") else { return }
        let imageView2 = UIImageView()
        imageView2.widthAnchor.constraint(equalTo: imageView2.heightAnchor, multiplier: 0.5).isActive = true
        imageView2.kf.setImage(with: url2)
        
        guard let url3 = URL(string:   "http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0642265b65dcc2490ab164ff428cbfe2.jpg") else { return }
        let imageView3 = UIImageView()
        imageView3.widthAnchor.constraint(equalTo: imageView3.heightAnchor, multiplier: 0.5).isActive = true
        imageView3.kf.setImage(with: url3)
        
        
        let arr = [imageView1, imageView2, imageView3]
        for image in arr {
        
            self.detailScrollView.detailStackView.addArrangedSubview(image)
        }
    
        
    }

    func receive(detailHash: String) {
        self.detailMenuViewModel.send(detailHash: detailHash)
    }
    
    @objc func configureViewModel() {
        self.detailScrollView.title.text = detailMenuViewModel.title
        self.detailScrollView.body.text = detailMenuViewModel.productDescription
        configureBadges(verified: detailMenuViewModel.badges)
        self.detailScrollView.point.text = detailMenuViewModel.point
        self.detailScrollView.deliveryInfo.text = detailMenuViewModel.deliveryInfo
        self.detailScrollView.deliveryFee.text = detailMenuViewModel.deliveryFee
        configureThumbnailImage(imageArray: detailMenuViewModel.thumbImages)
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
    
    func configureThumbnailImage(imageArray: [String]) {
        let width = self.detailScrollView.thumbnailImageWidthConstraint.constant
        self.detailScrollView.thumbnailImageWidthConstraint.constant = self.detailScrollView.thumbnailImageWidthConstraint.constant * CGFloat(imageArray.count)
        
        for index in 0..<imageArray.count {
            guard let url = URL(string: imageArray[index]) else { return }
            let xPos: CGFloat = self.detailScrollView.thumbnailImageWidthConstraint.constant * CGFloat(index)
            let imageView = UIImageView(frame: CGRect(x: xPos, y: self.detailScrollView.thumbnailScrollView.bounds.minY, width: width, height: width))
            imageView.kf.setImage(with: url)
            self.detailScrollView.thumbnailScrollView.addSubview(imageView)
        }
    }
    
//    func configureDetailStackViewImage(imageArray: [String]) {
//        for image in imageArray {
//            guard let url = URL(string: image) else { return }
//            imageView.kf.setImage(with: url)
//            self.detailScrollView.thumbnailScrollView.addSubview(imageView)
//        }
//    }
}

