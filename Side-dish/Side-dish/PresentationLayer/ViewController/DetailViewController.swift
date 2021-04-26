//
//  DetailViewController.swift
//  Side-dish
//
//  Created by 조중윤 on 2021/04/22.
//

import UIKit
import Combine

class DetailViewController: UIViewController {
    var detailHash: String!
    var sideDishTitle : String!
    var badges : [Badge]?
    var nPrice : String?
    var sPrice : String!
    
    private var detailInfo : Item!
    private var cancellable = Set<AnyCancellable>()
    private var detailViewModel: DetailViewModel!
//    @Dependency var detailViewModel: DetailViewModel
    @IBOutlet weak var amountButtomViewModel: AmountButtonViewModel!
    private let sideDishAmountViewModel = SideDishAmountViewModel()
    
    @IBOutlet weak var thumbScrollView: UIScrollView!
    @IBOutlet weak var detailSectionStackView: UIStackView!
    @IBOutlet weak var sideDishTitleLabel: UILabel!
    @IBOutlet weak var badgesStackView: UIStackView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var pointLabel: UILabel!
    @IBOutlet weak var deliveryInfoLabel: UILabel!
    @IBOutlet weak var deliveryFeeLabel: UILabel!
    @IBOutlet weak var sPriceLabel: UILabel!
    @IBOutlet weak var nPriceLabel: UILabel!
    @IBOutlet weak var amountLabel: UILabel!
    @IBOutlet weak var totalPrice: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = sideDishTitle
        
//        if let safeDetailViewModel = detailViewModel {
        self.detailViewModel.request(with: self.detailInfo.detailHash)
//        } else {
//            print("No Detail View Model in DeailViewController")
//        }
        
        sideDishTitleLabel.text = sideDishTitle
        configureBadges(badges: badges)
        configurePrices()
        bind()
        
    }
    
    func bind() {
        detailViewModel.didFetchDetails { [weak self] (itemDetail) in
            self?.thumbImageLoad(images: itemDetail.thumbImages)
            self?.desctionImageLoad(desctionImages: itemDetail.detailSection)
            
            DispatchQueue.main.async {
                self?.descriptionLabel.text = itemDetail.productDescription
                self?.pointLabel.text = itemDetail.point
                self?.deliveryInfoLabel.text = itemDetail.deliveryInfo
                self?.deliveryFeeLabel.text = itemDetail.deliveryFee
            }
        }
        
        detailViewModel.except { [weak self] (error) in
            self?.triggerAlert(by: error)
        }
        
        amountButtomViewModel.bind { [weak self] (action) in
            switch action {
            case .plus:
                self?.sideDishAmountViewModel.amountState.Increase()
            case .minus:
                self?.sideDishAmountViewModel.amountState.Decrease()
            }
        }
        
        sideDishAmountViewModel.bind(sPrice: sPrice) { [weak self] (totalPrice, amount) in
            DispatchQueue.main.async {
                self?.amountLabel.text = amount
                self?.totalPrice.text = totalPrice
            }
        }
    }
    
    private func thumbImageLoad(images: [String]) {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }
            for i in 0..<images.count {
                
                let imageView = UIImageView()
                self.imageLoad(urlString: images[i]) { (uiImage) in
                    DispatchQueue.main.async {
                        imageView.image = uiImage
                    }
                }
                let xPosition = self.view.frame.width * CGFloat(i)
                imageView.frame = CGRect(x: xPosition, y: 0, width: self.view.frame.width, height: self.thumbScrollView.frame.height)
               
                self.thumbScrollView.contentSize.width = self.thumbScrollView.frame.width * CGFloat(i + 1)
                self.thumbScrollView.addSubview(imageView)
             }
        }
    }
    
    func desctionImageLoad(desctionImages : [String]) {
        DispatchQueue.main.async { [weak self] in
            desctionImages.forEach { (image) in
                self?.imageLoad(urlString: image) { (uiImage) in
                    DispatchQueue.main.async { [weak self] in
                        let imageView = UIImageView(image: uiImage)
                        imageView.translatesAutoresizingMaskIntoConstraints = false
                        self?.detailSectionStackView.addArrangedSubview(imageView)
                        let ratio = imageView.frame.height / imageView.frame.width
                        if !(ratio.isNaN) {
                            imageView.heightAnchor.constraint(equalTo: imageView.widthAnchor, multiplier: ratio).isActive = true
                        }
                    }
                }
            }
        }
    }
    
    private func imageLoad(urlString: String, handler: @escaping (UIImage) -> ()) {
        ImageLoader().load(imageURL: urlString) { (data) in
            handler(UIImage(contentsOfFile: data) ?? UIImage())
        }
    }
    
    func configureBadges(badges: [Badge]?) {
        guard let badges = badges, !(badges.isEmpty) else {
            return
        }
        badgesStackView.isHidden = false
        badges.forEach { [weak self] (badge) in
            let badgeLabel = BadgeLabel()
            badgeLabel.configure(with: badge)
            self?.badgesStackView.addArrangedSubview(badgeLabel)
        }
    }
    
    func configurePrices() {
        sPriceLabel.text = sPrice
        setNPrice(nPrice: nPrice)
    }
    
    private func setNPrice(nPrice: String?) {
        guard let nPrice = nPrice else {
            nPriceLabel.isHidden = true
            return
        }
        let strokeEffect: [NSAttributedString.Key : Any] = [NSAttributedString.Key.strikethroughStyle: NSUnderlineStyle.single.rawValue]
        let strokeString = NSAttributedString(string: "\(nPrice)원", attributes: strokeEffect)
        self.nPriceLabel.attributedText = strokeString
    }
    
    private func triggerAlert(by error : String) {
        DispatchQueue.main.async { [weak self] in
            self?.present(Alert.create(title : error),animated: true)
        }
    }
    
    func depend2(detailViewModel: DetailViewModel) {
        self.detailViewModel = detailViewModel
    }
    
    func setItemInfo(from item: Item) {
        self.detailInfo = item
    }
}
