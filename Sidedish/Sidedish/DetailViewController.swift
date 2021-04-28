//
//  DetailViewController.swift
//  Sidedish
//
//  Created by Issac on 2021/04/19.
//

import UIKit
import Toaster

class DetailViewController: UIViewController {
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
                self.setTitle()
                self.clearImage()
                self.setThumdnailImage()
                self.setInformationView()
                self.setDetailScrollView()
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
    
    private func setTitle() {
        self.title = self.detailViewModel.currentItemTitle
    }
    
    private func clearImage() {
        for subview in self.informationStackView.subviews {
            subview.removeFromSuperview()
        }
        self.thumbnailContentView.subviews.forEach { (view) in
            view.removeFromSuperview()
        }
    }
    
    private func setInformationView() {
        if let view = Bundle.main.loadNibNamed("CustomView", owner: self, options: nil)?.first as? CustomView {
            view.configure(productName: self.detailViewModel.currentItemTitle, item: detailViewModel.currentDetail)
            view.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true
            view.heightAnchor.constraint(equalToConstant: view.frame.height).isActive = true
            self.informationStackView.insertArrangedSubview(view, at: 0)
        }
    }
    
    private func setThumbnailScrollView() {
        self.thumbnailScrollView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.width)
    }
    
    private func setThumdnailImage() {
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
            
            self.thumbnailContentViewWidth.constant = self.view.frame.width * CGFloat(self.detailViewModel.currentDetail.thumbImagesData?.count ?? 0)
            self.thumbnailContentView.addSubview(imageView)
        }
    }
    
    private func setDetailScrollView() {
        guard let detailSectionData = self.detailViewModel.currentDetail.detailSectionData else { return }
        for index in 0..<detailSectionData.count {
            let imageView = UIImageView()
            guard let data = detailSectionData[index] else { continue }
            imageView.image = UIImage(data: data)
            imageView.contentMode = .scaleAspectFit
            let ratio = calculateImageRatioOfImageView(imageView.image)
            imageView.heightAnchor.constraint(equalTo: imageView.widthAnchor, multiplier: ratio).isActive = true
            informationStackView.addArrangedSubview(imageView)
        }
    }
    
    private func calculateImageRatioOfImageView(_ image: UIImage?) -> CGFloat {
        guard let image = image else { return 0 }
        return image.size.height / image.size.width
    }
}
