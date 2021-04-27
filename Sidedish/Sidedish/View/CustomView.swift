//
//  CustomView.swift
//  Sidedish
//
//  Created by Ador on 2021/04/27.
//

import UIKit

class CustomView: UIView {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var productDescription: UILabel!
    @IBOutlet weak var point: UILabel!
    @IBOutlet weak var deliveryInfo: UILabel!
    @IBOutlet weak var deliveryFee: UILabel!
    @IBOutlet weak var prices: UILabel!
    
    func configure(productName: String = "", item: DetailItem) {
        title.text = productName
        productDescription.text = item.productDescription
        point.text = item.point
        deliveryInfo.text = item.deliveryInfo
        deliveryFee.text = item.deleveryFee
        prices.text = item.prices.first
    }
}
