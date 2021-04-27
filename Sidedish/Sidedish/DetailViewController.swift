//
//  DetailViewController.swift
//  Sidedish
//
//  Created by Issac on 2021/04/19.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailImages: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 상세이미지 추가
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.heightAnchor.constraint(equalTo: imageView.widthAnchor, multiplier: 1).isActive = true
        detailImages.addArrangedSubview(imageView)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = false
    }
}
