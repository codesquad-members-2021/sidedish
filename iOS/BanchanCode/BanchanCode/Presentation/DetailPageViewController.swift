//
//  DetailPageViewController.swift
//  BanchanCode
//
//  Created by Song on 2021/04/28.
//

import UIKit

class DetailPageViewController: UIViewController {
    
    @IBOutlet weak var thumbnailImagesScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.thumbnailImagesScrollView.isPagingEnabled = true
        
        let thumbImages = [
            "http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg",
            "http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg",
            "http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg",
            "http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg"
        ]
        
        var thumbImageViews: [UIImageView] = []
        thumbImages.forEach { imageURL in
            NetworkManager().updateThumbImage(imageURL: imageURL) { imageData in
                let image = UIImage(data: imageData)
                thumbImageViews.append(UIImageView(image: image))
                
                DispatchQueue.main.async {
                    self.thumbnailImagesScrollView.contentSize = CGSize(width: self.view.frame.width * CGFloat(thumbImageViews.count),
                                                                        height: self.view.frame.width)
                    (0..<thumbImageViews.count).forEach { index in
                        thumbImageViews[index].frame = CGRect(x: self.view.frame.width * CGFloat(index),y: 0,
                                                              width: self.view.frame.width, height: self.view.frame.width)
                        self.thumbnailImagesScrollView.addSubview(thumbImageViews[index])
                    }
                }
            }
        }
    }
}
