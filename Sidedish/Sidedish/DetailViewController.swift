//
//  DetailViewController.swift
//  Sidedish
//
//  Created by Issac on 2021/04/19.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var detailImages: UIStackView!
    @IBOutlet weak var imageScrollView: UIScrollView!
    @IBOutlet weak var contentView: UIView!
    var itemViewModel: ItemViewModel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 상세이미지 추가
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.heightAnchor.constraint(equalTo: imageView.widthAnchor, multiplier: 1).isActive = true
        detailImages.addArrangedSubview(imageView)
        
        itemViewModel.detailHandler = {
            print(self.itemViewModel.currentDetail.detailSectionData)
        }
    }

private func setImage() {
    let currentDetailItem = self.itemViewModel.currentDetail
    self.imageScrollView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.width)
    self.imageScrollView.contentSize = CGSize(width: self.view.frame.width * CGFloat((currentDetailItem.thumbImagesData?.count ?? 0 + 1) ?? 0), height: self.view.frame.width)
    self.imageScrollView.isPagingEnabled = true
    
    for index in 0..<(currentDetailItem.thumbImagesData?.count ?? 0) + 1{
        
    }
    
}

override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = false
    }
    
    func setImageScrollView() {
        self.imageScrollView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.width)
    }
}
