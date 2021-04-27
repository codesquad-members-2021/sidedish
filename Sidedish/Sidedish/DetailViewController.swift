//
//  DetailViewController.swift
//  Sidedish
//
//  Created by Issac on 2021/04/19.
//

import UIKit
import Toaster

class DetailViewController: UIViewController {
    @IBOutlet weak var detailImages: UIStackView!
    @IBOutlet weak var thumbnailScrollView: UIScrollView!
    @IBOutlet weak var thumbnailContentView: UIView!
    @IBOutlet weak var thumbnailContentViewWidth: NSLayoutConstraint!
    var detailViewModel: DetailViewModel!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setThumbnailScrollView()
        self.setDetailScrollView()
        
        detailViewModel.detailHandler = {
            DispatchQueue.main.async {
                self.setImage()
                self.thumbnailContentViewWidth.constant = self.view.frame.width * CGFloat(self.detailViewModel.currentDetail.thumbImagesData?.count ?? 0)
            }
        }
        
        self.detailViewModel.errorHandler = { error in
            Toast(text: error).show()
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = false
    }
    
    private func setThumbnailScrollView() {
        self.thumbnailScrollView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.width)
        self.thumbnailScrollView.isPagingEnabled = true
    }
    
    private func setImage() {
        let currentDetailItem = self.detailViewModel.currentDetail
        for index in 0..<(currentDetailItem.thumbImagesData?.count ?? 0) + 1{
            let imageView = UIImageView(frame: CGRect(x: thumbnailScrollView.frame.width * CGFloat(index),
                                                      y: 0,
                                                      width: self.thumbnailScrollView.frame.width,
                                                      height: self.thumbnailScrollView.frame.width))
            imageView.contentMode = .scaleAspectFit
            if index == 0 {
                guard let imageData = currentDetailItem.topImageData else { continue }
                imageView.image = UIImage(data: imageData)
            } else {
                guard let imageData = currentDetailItem.thumbImagesData?[index - 1] else { continue }
                imageView.image = UIImage(data: imageData)
            }
            
            
            self.thumbnailContentView.addSubview(imageView)
        }
    }
    
    private func setDetailScrollView() {
        // 상세이미지 추가
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.heightAnchor.constraint(equalTo: imageView.widthAnchor, multiplier: 1).isActive = true
        detailImages.addArrangedSubview(imageView)
        
    }
}
