//
//  DetailMenuViewController.swift
//  SideDish
//
//  Created by sonjuhyeong on 2021/04/27.
//

import UIKit

class DetailMenuViewController: UIViewController {

    private var detailHash: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func receive(detailHash: String) {
        self.detailHash = detailHash
    }
}

