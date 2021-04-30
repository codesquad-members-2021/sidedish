//
//  DetailBanchanViewController.swift
//  SideDish
//
//  Created by 심영민 on 2021/04/20.
//

import UIKit
import Combine

class BanchanDetailViewController: UIViewController {
    
    @IBOutlet weak var mainScrollView: UIScrollView!
    @IBOutlet weak var imageScrollView: UIScrollView!
    @IBOutlet var imageViews: [UIImageView]!
    
    @IBOutlet weak var detailDescriptionStackView: UIStackView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var sPriceLabel: UILabel!
    @IBOutlet weak var nPriceLabel: UILabel!
    @IBOutlet weak var badgeStackView: UIStackView!
    @IBOutlet weak var pointLabel: UILabel!
    @IBOutlet weak var deliveryInfoLabel: UILabel!
    @IBOutlet weak var deliveryFeeLabel: UILabel!
    @IBOutlet weak var orderCountLabel: UILabel!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var totalPriceLabel: UILabel!
    
    @IBOutlet weak var orderButton: UIButton!
    private var quantity: Int = 1
    private var subscriptions = Set<AnyCancellable>()
    private var viewModel: BanchanDetailViewModel!
    
    static let storyboardName = "Main"
    static let storyboardID = "BanchanDetailViewController"
    
    static func create(with viewModel: BanchanDetailViewModel) -> BanchanDetailViewController {
        let storyboard = UIStoryboard(name: storyboardName, bundle: Bundle.main)
        guard let vc = storyboard.instantiateViewController(identifier: storyboardID) as? BanchanDetailViewController else {
            return BanchanDetailViewController()
        }
        vc.viewModel = viewModel
        return vc
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bind()
    }
    
    private func bind() {
        viewModel.$banchanDetail
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { (result) in
                switch result {
                case .failure(let error):
                    print(error)
                case .finished:
                    break
                }
            }, receiveValue: { (banchanDetail) in
                self.configure(banchanDetail: banchanDetail)
            })
            .store(in: &subscriptions)
    }
    
    @IBAction func buttonTouched(_ sender: UIButton) {
        
        if sender == plusButton {
            quantity += 1
            orderCountLabel.text = "\(quantity)"
            
        } else {
            if quantity != 1 {
                quantity -= 1
                orderCountLabel.text = "\(quantity)"
            }
        }
        
        totalPriceLabel.text = decimalWon(value: viewModel.banchanDetail.sPrice)
        
    }
    
    func decimalWon(value: String) -> String {
        let price = Int(value.replacingOccurrences(of: ",", with: "").replacingOccurrences(of: "원", with: "")) ?? 0
        let totalPrice = price * quantity
        
            let numberFormatter = NumberFormatter()
            numberFormatter.numberStyle = .decimal
            let result = numberFormatter.string(from: NSNumber(value: totalPrice))! + "원"
            
            return result
        }
    
    @IBAction func orderButtonTouched(_ sender: UIButton) {
        viewModel.didTappedOrderButton(quantity: quantity) { result, error in
            var alert: UIAlertController!
            
            switch result {
            case 200:
                DispatchQueue.main.async {
                    alert = self.viewModel.makeAlert(message: .success)
                    self.present(alert, animated: true, completion: nil)
                }
            default:
                DispatchQueue.main.async {
                    alert = self.viewModel.makeAlert(message: .failure)
                    self.present(alert, animated: true, completion: nil)
                }
            }
        }
    }
    
    private func configure(banchanDetail: BanchanDetail?) {
        
        guard let banchanDetail = banchanDetail else {
            return
        }
        self.title = viewModel.banchanDetail.title
        self.titleLabel.text = banchanDetail.title
        self.descriptionLabel.text = banchanDetail.productDescription
        self.sPriceLabel.text = banchanDetail.sPrice
        setNPrice(text: banchanDetail.nPrice)
        setBadges(badges: banchanDetail.badges)
        self.pointLabel.text = banchanDetail.point
        self.deliveryInfoLabel.text = banchanDetail.deliveryInfo
        self.totalPriceLabel.text = banchanDetail.sPrice
        setDeliveryFee(text: "\(banchanDetail.deliveryFee) (40,000원 이상 구매 시 무료)")
        configureThumbImage(images: banchanDetail.thumbImages)
        configureDescriptionImage(images: banchanDetail.detailSection)

    }
    
    private func setNPrice(text: String?) {
        guard let text = text else {
            nPriceLabel.isHidden = true
            return
        }
        
        let strikeThroughAttributeStyle = [NSAttributedString.Key.strikethroughStyle: NSNumber(value: NSUnderlineStyle.single.rawValue)]
        nPriceLabel.attributedText = NSAttributedString(string: text, attributes: strikeThroughAttributeStyle)
    }
    
    private func setDeliveryFee(text: String) {
        let font = UIFont.boldSystemFont(ofSize: 14)
        
        let attributedStr = NSMutableAttributedString(string: text)
        
        attributedStr.addAttribute(.font, value: font, range: (text as NSString).range(of: "(40,000원 이상 구매 시 무료)"))
        attributedStr.addAttribute(.foregroundColor, value: UIColor.black, range: (text as NSString).range(of: "40,000원 이상 구매 시 무료"))
        deliveryFeeLabel.attributedText = attributedStr
    }
    
    private func setBadges(badges: [String]?) {
        badgeStackView.arrangedSubviews.forEach {
            $0.removeFromSuperview()
        }
        
        guard let badges = badges else {
            badgeStackView.isHidden = true
            return
        }
        badges.forEach({ (badge) in
            let badgeLabel = BadgeLabel()
            badgeLabel.configure(text: badge)
            badgeStackView.addArrangedSubview(badgeLabel)
        })
    }
    
    private func configureThumbImage(images: [String]) {
        imageViews.removeAll()
        for i in 0..<images.count {
            let imageView = UIImageView()
            let xPos = self.imageScrollView.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPos, y: 0,
                                     width: self.imageScrollView.bounds.width,
                                     height: self.imageScrollView.bounds.height)
            imageView.load(url: images[i])
            imageViews.append(imageView)
            imageScrollView.addSubview(imageView)
            imageScrollView.contentSize.width = imageView.frame.width * CGFloat(i+1)
        }
    }
    
    private func configureDescriptionImage(images: [String]) {
        for i in 0..<images.count {
            let imageView = UIImageView()
            imageView.load(url: images[i])
            imageView.widthAnchor.constraint(equalTo: imageView.heightAnchor, multiplier: 1.0/1.0).isActive = true
            imageView.contentMode = .scaleAspectFit
            detailDescriptionStackView.addArrangedSubview(imageView)
        }
    }
}

