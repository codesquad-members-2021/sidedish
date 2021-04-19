//
//  CardCell.swift
//  SideDish
//
//  Created by 양준혁 on 2021/04/19.
//

import UIKit

class CardCell: UICollectionViewCell {
    
    @IBOutlet weak var food: UIImageView!
    
    var foodTitle = UILabel()
    var foodDescription = UILabel()
    var foodPrice = UILabel()
    var eventBadge = UIImageView()

    
    override func awakeFromNib() {
        super.awakeFromNib()
        foodTitle.text = "321312"
        self.addSubview(foodTitle)
        configure()
        
    }
    
    func configure() {
        foodTitle.translatesAutoresizingMaskIntoConstraints = false
        foodTitle.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 12.5).isActive = true
        foodTitle.leadingAnchor.constraint(equalTo: food.trailingAnchor, constant: 8).isActive = true
        foodTitle.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor).isActive = true
        foodTitle.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: 97.5).isActive = true
    }

}
