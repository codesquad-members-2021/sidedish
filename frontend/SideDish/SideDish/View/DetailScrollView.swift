//
//  DetailScrollView.swift
//  SideDish
//
//  Created by sonjuhyeong on 2021/04/27.
//

import UIKit

class DetailScrollView: UIScrollView {

    @IBOutlet weak var thumbnailScrollView: UIScrollView!
    @IBOutlet weak var thumbnailImage: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var body: UILabel!
    @IBOutlet weak var salePrice: UILabel!
    @IBOutlet weak var normalPrice: UILabel!
    @IBOutlet weak var badgeView: UIView!
    @IBOutlet weak var eventBadge: UILabel!
    @IBOutlet weak var launchingBadge: UILabel!
    
    @IBOutlet weak var point: UILabel!
    @IBOutlet weak var deliveryInfo: UILabel!
    @IBOutlet weak var deliveryFee: UILabel!
    
    @IBOutlet weak var orderCount: UILabel!
    @IBOutlet weak var increaseButton: UIButton!
    @IBOutlet weak var decreaseButton: UIButton!
    
    @IBOutlet weak var totalPrice: UILabel!
    @IBOutlet weak var orderButton: UIButton!
    
    @IBOutlet weak var detailStackView: UIStackView!
}
