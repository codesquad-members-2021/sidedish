//
//  MenuDetail.swift
//  SideDishApp
//
//  Created by 오킹 on 2021/04/29.
//

import UIKit

class MenuDetailController: UIViewController {
    

    @IBOutlet weak var topImageStackView: UIStackView!
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dishDescriptionLabel: UILabel!
    @IBOutlet weak var orderFeeLabel: UILabel!
    @IBOutlet weak var badgeStackView: UIStackView!
    
    @IBOutlet weak var pointLabel: UILabel!
    @IBOutlet weak var deliveryDescription: UILabel!
    @IBOutlet weak var deliveryFee: UILabel!
    
    @IBOutlet weak var orderNumberLabel: UILabel!
    
    @IBOutlet weak var totalOrderFeeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func subtractStock(_ sender: Any) {
    }
    
    @IBAction func putInStock(_ sender: Any) {
    }
    
    @IBAction func order(_ sender: Any) {
    }

}
