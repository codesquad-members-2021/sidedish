//
//  CustomView.swift
//  Sidedish
//
//  Created by Ador on 2021/04/27.
//

import UIKit

class CustomView: UIView {
    @IBOutlet weak var eventLabel: BadgeLabel!
    @IBOutlet weak var launchLabel: BadgeLabel!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var productDescription: UILabel!
    @IBOutlet weak var point: UILabel!
    @IBOutlet weak var deliveryInfo: UILabel!
    @IBOutlet weak var deliveryFee: UILabel!
    @IBOutlet weak var sellingPrice: UILabel!
    @IBOutlet weak var originalPrice: UILabel!
    @IBOutlet weak var totalPrice: UILabel!
    @IBOutlet weak var quantity: UILabel!
    
    func configure(productName: String = "", item: DetailItem) {
        title.text = productName
        productDescription.text = item.productDescription
        point.text = item.point
        deliveryInfo.text = item.deliveryInfo
        deliveryFee.text = item.deleveryFee
        sellingPrice.text = item.prices.first
        originalPrice.attributedText = item.prices.last?.attributedStringOfStrikethroughStyle()
        totalPrice.text = item.prices.first
    }
    
    func configureBadge(for badges: [Bool]) {
        eventLabel.isHidden = badges[0]
        launchLabel.isHidden = badges[1]
    }
    
    func configure(quantity: Int, totalPrice: String) {
        self.quantity.text = "\(quantity)"
        self.totalPrice.text = totalPrice
    }
    
    @IBAction func upQuantity(_ sender: UIButton) {
        NotificationCenter.default.post(name: .increaseQuntity, object: self)
    }
    
    @IBAction func downQuantity(_ sender: UIButton) {
        NotificationCenter.default.post(name: .decreaseQuntity, object: self)
    }
}
