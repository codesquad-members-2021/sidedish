//
//  CardCell.swift
//  SideDish
//
//  Created by 양준혁 on 2021/04/19.
//

import UIKit
import Alamofire

class CardCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbnail: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var detail: UILabel!
    @IBOutlet weak var discountPrice: UILabel!
    @IBOutlet weak var originalPrice: UILabel!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    @IBOutlet weak var badgeView: UIStackView!
    
    var card : Card? {
        didSet {
            thumbnail.load(url: card?.imageURL, completion: {
                self.activityIndicator.stopAnimating()
            })
            title.text = card?.title
            detail.text = card?.detail
            discountPrice.text = card?.discountPrice?.description
            originalPrice.attributedText = NSMutableAttributedString(string: card?.originalPrice?.description ?? "",
                                                                          attributes: [NSAttributedString.Key.strikethroughStyle: NSUnderlineStyle.single.rawValue])
            guard let badges = card?.badge else {
                badgeView.isHidden = true
                return
            }
            
            badges.forEach{ badge in
                let view = makeBadge(with: badge)
                self.badgeView.addArrangedSubview(view)
            }
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.activityIndicator.startAnimating()
        configureTitle()
        configureDetail()
        configureThumbnail()
        configureBadgeView()
    }
    func makeBadge(with name: String) -> UIView {
        
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 72, height: 25))
        
        view.backgroundColor = .white
        view.layer.backgroundColor = #colorLiteral(red: 0.5095996261, green: 0.8290402293, blue: 0.1742436588, alpha: 1)
        view.layer.cornerRadius = 5
        
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 56, height: 17))
        label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        label.font = UIFont(name: "NotoSansKR-Bold", size: 12)
        label.text = name
        
        view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.widthAnchor.constraint(equalToConstant: 56).isActive = true
        label.heightAnchor.constraint(equalToConstant: 17).isActive = true
        label.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        label.topAnchor.constraint(equalTo: view.topAnchor, constant: 4).isActive = true
     
        return view
    }
    func configureTitle(){
        self.title.textColor = UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)
        self.title.font = UIFont(name: "NotoSansKR-Bold", size: 16)
        self.title.numberOfLines = 0
        self.title.lineBreakMode = .byWordWrapping
    }
    func configureDetail(){
        self.detail.textColor = UIColor(red: 0.51, green: 0.51, blue: 0.51, alpha: 1)
        self.detail.font = UIFont(name: "NotoSansKR-Regular", size: 14)
    }
    func configurePrice(){
        self.discountPrice.textColor = UIColor(red: 0.004, green: 0.004, blue: 0.004, alpha: 1)
        self.discountPrice.font = UIFont(name: "NotoSansKR-Bold", size: 14)
        
        self.originalPrice.textColor = UIColor(red: 0.741, green: 0.741, blue: 0.741, alpha: 1)
        self.originalPrice.font = UIFont(name: "NotoSansKR-Regular", size: 14)
    }
    func configureThumbnail(){
        self.thumbnail.layer.cornerRadius = 5
    }
    func configureBadgeView(){
        self.badgeView.translatesAutoresizingMaskIntoConstraints = false
    }
}
