//
//  LoadingView.swift
//  SideDishApp
//
//  Created by 오킹 on 2021/04/23.
//

import UIKit

class LoadingView: UIView {
    
    @IBOutlet weak var imageView: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initXIB()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initXIB()
    }
    
    func initXIB() {
        guard let view = Bundle.main.loadNibNamed("LoadingView", owner: self, options: nil)?.first as? UIView else { return }
        
        view.frame = self.bounds
        self.addSubview(view)
    }
}
