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
    @IBOutlet weak var informationStackView: UIStackView!
    
    var detailViewModel: DetailViewModel!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setThumbnailScrollView()
        
        detailViewModel.imageFetchHandler = {
            DispatchQueue.main.async {
                self.setImage()
                self.setDetailScrollView()
            }
        }
        
        detailViewModel.detailImageFetchHandler = {
            
        }
        
        self.detailViewModel.errorHandler = { error in
            Toast(text: error).show()
        }
    }
    
    private func setInformationView() {
        if let view = Bundle.main.loadNibNamed("CustomView", owner: self, options: nil)?.first as? CustomView {
            view.configure(item: detailViewModel.currentDetail)
            informationStackView.addArrangedSubview(view)
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
        self.thumbnailContentView.subviews.forEach { (view) in
            view.removeFromSuperview()
        }
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
            
            self.thumbnailContentViewWidth.constant = self.view.frame.width * CGFloat(self.detailViewModel.currentDetail.thumbImagesData?.count ?? 0)
            self.thumbnailContentView.addSubview(imageView)
        }
    }
    
    private func setDetailScrollView() {
        guard let thumbImagesData = self.detailViewModel.currentDetail.thumbImagesData else { return }
        guard let detailSectionData = self.detailViewModel.currentDetail.detailSectionData else { return }
        guard detailSectionData.filter({ $0 == nil }).isEmpty,
              thumbImagesData.filter({ $0 == nil }).isEmpty else { return }
        
        
        for index in 0..<detailSectionData.count {
            let imageView = UIImageView()
            guard let data = detailSectionData[index] else { continue }
            imageView.image = UIImage(data: data)
            imageView.contentMode = .scaleAspectFit
//            imageView.widthAnchor.constraint(equalTo: self.view.layoutMarginsGuide.widthAnchor, multiplier: 1).isActive = true
            detailImages.addArrangedSubview(imageView)
        }
//        규조 ?
        
        
    }
}
