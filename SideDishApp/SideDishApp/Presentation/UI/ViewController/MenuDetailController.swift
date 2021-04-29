//
//  MenuDetail.swift
//  SideDishApp
//
//  Created by 오킹 on 2021/04/29.
//

import UIKit

class MenuDetailController: UIViewController {
    
    @IBOutlet weak var titleImageView: UIImageView!
    @IBOutlet weak var titleStackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func setImageView(image: UIImage) {
        self.titleImageView.image = image
    }
    
    func setTitleStackView() {
        
    }
    
    
}
