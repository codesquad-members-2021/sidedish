//
//  ImageView+load.swift
//  SideDish
//
//  Created by 박혜원 on 2021/04/20.
//

import UIKit

extension UIImageView {
    func load(url: URL?, completion : @escaping () -> ()) {
        guard let url = url else { return }
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                        completion()
                    }
                }
            }
        }
    }
}
