//
//  ImageView+Extension.swift
//  SideDish
//
//  Created by 심영민 on 2021/04/24.
//

import UIKit
import Kingfisher

extension UIImageView {
    func load(url: String?) {
        DispatchQueue.global().async {
            let url = URL(string: url!)
            DispatchQueue.main.async {
                self.kf.setImage(with: url)
            }
        }
    }
}
