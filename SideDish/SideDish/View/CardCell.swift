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
    var foodDiscountPrice = UILabel()
    var foodOriginalPrice = UILabel()
    var eventBadge = UIImageView()
    var launchingBadge = UIImageView()

    override func awakeFromNib() {
        super.awakeFromNib()
        foodTitle.text = "title"
        foodDescription.text = "body"
        foodDiscountPrice.text = "0원"
        foodOriginalPrice.text = "0원"
        self.addSubview(foodTitle)
        self.addSubview(foodDescription)
        self.addSubview(foodDiscountPrice)
        self.addSubview(foodOriginalPrice)
        self.addSubview(eventBadge)
        self.addSubview(launchingBadge)
        configureFoodTitle()
        configureFoodDescription()
        configureFoodDiscountPrice()
        configureFoodOriginalPrice()
        configureEventBadge()
        configureLaunchingBadge()
    }
    
    func configureFoodTitle() {
        foodTitle.translatesAutoresizingMaskIntoConstraints = false
        foodTitle.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 12.5).isActive = true
        foodTitle.leadingAnchor.constraint(equalTo: food.trailingAnchor, constant: 8).isActive = true
        
        //trailing 늘어날수있게 설정해야함.
        foodTitle.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor).isActive = true
        foodTitle.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -97.5).isActive = true
    }
    
    func configureFoodDescription() {
        foodDescription.translatesAutoresizingMaskIntoConstraints = false
        foodDescription.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 36.5).isActive = true
        foodDescription.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 138).isActive = true
        
        //trailing 늘어날수있게 설정해야함.
        foodDescription.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor).isActive = true
        foodDescription.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -73.5).isActive = true
    }
    
    func configureFoodDiscountPrice() {
        foodDiscountPrice.translatesAutoresizingMaskIntoConstraints = false
        foodDiscountPrice.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 64.5).isActive = true
        foodDiscountPrice.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 138).isActive = true
        
        //trailing 늘어날수있게 설정해야함.
        foodDiscountPrice.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: 183).isActive = true
        foodDiscountPrice.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -45.5).isActive = true
    }
    
    func configureFoodOriginalPrice() {
        foodOriginalPrice.translatesAutoresizingMaskIntoConstraints = false
        foodOriginalPrice.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 64.5).isActive = true
        foodOriginalPrice.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 164).isActive = true
        
        //trailing 늘어날수있게 설정해야함.
        foodOriginalPrice.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -150).isActive = true
        foodOriginalPrice.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -45.5).isActive = true
        foodOriginalPrice.textColor = #colorLiteral(red: 0.74110502, green: 0.7412282825, blue: 0.741078794, alpha: 1)
    }
    
    func configureEventBadge() {
        eventBadge.translatesAutoresizingMaskIntoConstraints = false
        eventBadge.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 92.5).isActive = true
        eventBadge.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 138).isActive = true
        eventBadge.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -133).isActive = true
        eventBadge.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -12.5).isActive = true
        eventBadge.backgroundColor = #colorLiteral(red: 0.5095996261, green: 0.8290402293, blue: 0.1742436588, alpha: 1)
        eventBadge.layer.cornerRadius = 5
        eventBadge.clipsToBounds = true
    }
    
    func configureLaunchingBadge() {
        launchingBadge.translatesAutoresizingMaskIntoConstraints = false
        launchingBadge.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 92.5).isActive = true
        launchingBadge.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 214).isActive = true
        launchingBadge.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -68).isActive = true
        launchingBadge.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -12.5).isActive = true
        launchingBadge.backgroundColor = #colorLiteral(red: 0.6011084318, green: 0.8016367555, blue: 0.9797580838, alpha: 1)
        launchingBadge.layer.cornerRadius = 5
        launchingBadge.clipsToBounds = true
    }
}
