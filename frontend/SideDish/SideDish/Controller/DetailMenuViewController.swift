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
        
        let color : [UIColor] = [.red, .orange, .yellow, .green, .blue]
        var location = self.detailScrollView.thumbnailScrollView.bounds.minX
        var size : CGFloat = 414
        for i in 0..<color.count {
            let imageView = UIImageView()
            imageView.backgroundColor = color[i]
            let xPos = self.detailScrollView.thumbnailScrollView.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPos, y: 0, width: self.detailScrollView.thumbnailScrollView.bounds.width, height: self.detailScrollView.thumbnailScrollView.bounds.height)
            self.detailScrollView.thumbnailScrollView.addSubview(imageView)
            self.detailScrollView.thumbnailScrollView.contentSize.width = imageView.frame.width * CGFloat(i+1)
            
//            size += 414
            location += 414
            print("*********")
            print(size, location, self.detailScrollView.thumbnailScrollView.contentSize.width)
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
        for image in imageArray {
            guard let url = URL(string: image) else { return }
            let imageView = UIImageView()
            imageView.kf.setImage(with: url)
            self.detailScrollView.thumbnailScrollView.addSubview(imageView)
        }
    }
}

