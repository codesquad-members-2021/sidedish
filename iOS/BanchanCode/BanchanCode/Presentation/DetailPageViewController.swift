//
//  DetailPageViewController.swift
//  BanchanCode
//
//  Created by Song on 2021/04/28.
//

import UIKit

class DetailPageViewController: UIViewController {
    @IBOutlet weak var thumbnailImagesScrollView: UIScrollView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var lastPriceLabel: UILabel!
    @IBOutlet weak var originalPriceLabel: UILabel!
    @IBOutlet weak var badgeStackView: UIStackView!
    @IBOutlet weak var pointLabel: UILabel!
    @IBOutlet weak var deliveryInfoLabel: UILabel!
    @IBOutlet weak var deliveryFeeLabel: UILabel!
    @IBOutlet weak var quantityLabel: UILabel!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var removeButton: UIButton!
    @IBOutlet weak var totalPriceLabel: UILabel!
    @IBOutlet weak var orderButton: UIButton!
    @IBOutlet weak var detailImagesStackView: UIStackView!
    
    var categoryName: String?
    var id: Int?
    var viewModel: DishDetailsViewModel!
    var currentQuantity: Int = 1
    var totalPrice: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel = makeDishDetailsViewModel()
        bind(to: viewModel)
        
        viewModel.load()
        
        self.thumbnailImagesScrollView.isPagingEnabled = true
        orderButton.layer.masksToBounds = true
        orderButton.layer.cornerRadius = 5.0
        quantityLabel.text = "\(currentQuantity)"
        
        quantityLabel.layer.borderWidth = 1.0
        quantityLabel.layer.borderColor = UIColor(named: "LineSeparatorColor")?.cgColor
        setupUI(of: addButton)
        setupUI(of: removeButton)
    }
    
    private func createBadgeView(with text: String) -> UIView {
        let badgeBackgroundView = UIView(frame: CGRect.zero)
        badgeBackgroundView.backgroundColor = text == "이벤트특가" ? #colorLiteral(red: 0.5098039216, green: 0.8274509804, blue: 0.1764705882, alpha: 1) : #colorLiteral(red: 0.5254901961, green: 0.7764705882, blue: 1, alpha: 1)
        badgeBackgroundView.layer.masksToBounds = true
        badgeBackgroundView.layer.cornerRadius = 5.0
        badgeBackgroundView.translatesAutoresizingMaskIntoConstraints = false
        
        let badgeLabel = createBadgeLabel(with: text)
        badgeBackgroundView.addSubview(badgeLabel)
        
        badgeLabel.centerXAnchor.constraint(equalTo: badgeBackgroundView.centerXAnchor).isActive = true
        badgeBackgroundView.leadingAnchor.constraint(equalTo: badgeLabel.leadingAnchor, constant: -8.0).isActive = true
        badgeBackgroundView.trailingAnchor.constraint(equalTo: badgeLabel.trailingAnchor, constant: 8.0).isActive = true
        badgeLabel.centerYAnchor.constraint(equalTo: badgeBackgroundView.centerYAnchor).isActive = true
        return badgeBackgroundView
    }
    
    private func createBadgeLabel(with text: String) -> UILabel {
        let badgeLabel = UILabel(frame: CGRect.zero)
        badgeLabel.font = UIFont.systemFont(ofSize: 12.0, weight: .bold)
        badgeLabel.textColor = .white
        badgeLabel.text = text
        badgeLabel.translatesAutoresizingMaskIntoConstraints = false
        return badgeLabel
    }
    
    func setupUI(of button: UIButton) {
        button.layer.borderWidth = 1.0
        button.layer.borderColor = UIColor(named: "LineSeparatorColor")?.cgColor
    }
    
    @IBAction func addButtonPressed(_ sender: UIButton) {
        let dishDetail = viewModel.dishDetail.value
        currentQuantity += 1
        totalPrice = currentQuantity * (dishDetail.prices?[0] ?? 0)
        quantityLabel.text = "\(currentQuantity)"
        totalPriceLabel.text = "\(totalPrice)원"
    }
    
    @IBAction func removeButtonPressed(_ sender: UIButton) {
        let dishDetail = viewModel.dishDetail.value
        currentQuantity -= 1
        totalPrice = currentQuantity * (dishDetail.prices?[0] ?? 0)
        quantityLabel.text = "\(currentQuantity)"
        totalPriceLabel.text = "\(totalPrice)원"
    }
    
    func makeFetchDishDetailsUseCase(requestValue: FetchDishDetailsUseCase.RequestValue,
                                     completion: @escaping (FetchDishDetailsUseCase.ResultValue) -> Void) -> UseCase {
        return FetchDishDetailsUseCase(requestValue: requestValue,
                                       completion: completion)
    }
    
    func makeDishDetailsViewModel() -> DishDetailsViewModel? {
        guard let categoryName = categoryName else { return nil }
        guard let id = id else { return nil }
        return DefaultDishDetailsViewModel(fetchDishDetailsUseCaseFactory: makeFetchDishDetailsUseCase,
                                           categoryName: categoryName,
                                           id: id)
    }
    
    private func bind(to viewModel: DishDetailsViewModel) {
        viewModel.dishDetail.observe(on: self) { [weak self] _ in self?.updateView() }
        viewModel.dishDetail.observe(on: self) { [weak self] _ in self?.updateThumbnailImages() }
        viewModel.dishDetail.observe(on: self) { [weak self] _ in self?.updateDetailImages() }
    }
    
    private func updateView() {
        let dishDetail = viewModel.dishDetail.value
        self.title = dishDetail.name
        self.nameLabel.text = dishDetail.name
        self.descriptionLabel.text = dishDetail.description
        
        guard let prices = dishDetail.prices else { return }
        let originalPrice = prices[0]
        if prices.count > 1 {
            let lastPrice = prices[1]
            lastPriceLabel.text = "\(lastPrice)원"
            originalPriceLabel.isHidden = false
            originalPriceLabel.attributedText = "\(originalPrice)원".strikethrough()
        } else {
            lastPriceLabel.text = "\(originalPrice)원"
            originalPriceLabel.isHidden = true
        }
        
        let badges = dishDetail.badges
        badgeStackView.arrangedSubviews.forEach { subview in
            subview.removeFromSuperview()
        }
        if badges?.count == 0 {
            badgeStackView.isHidden = true
        } else {
            badgeStackView.isHidden = false
            badges?.forEach { badgeString in
                let badgeView = createBadgeView(with: badgeString)
                badgeStackView.addArrangedSubview(badgeView)
            }
        }
        guard let point = dishDetail.point else { return }
        pointLabel.text = "\(point)원"
        deliveryInfoLabel.text = dishDetail.deliveryInfo
        deliveryFeeLabel.attributedText = attributedText(withString: "2,500원 (40,000원 이상 구매 시 무료)", boldString: "(40,000원 이상 구매 시 무료)", font: .systemFont(ofSize: 14.0))
        totalPriceLabel.text = "\(totalPrice)원"
    }
    
    private func updateThumbnailImages() {
        let thumbImageURLs = viewModel.dishDetail.value.thumbImages
        thumbImageURLs?.enumerated().forEach { (index, imageURL) in
            NetworkManager().updateThumbImage(imageURL: imageURL) { imageData in
                let image = UIImage(data: imageData)
                let imageView = UIImageView(image: image)
                self.thumbnailImagesScrollView.contentSize = CGSize(width: self.view.frame.width * CGFloat(thumbImageURLs?.count ?? 0),
                                                                    height: self.view.frame.width)
                imageView.frame = CGRect(x: self.view.frame.width * CGFloat(index), y: 0,
                                         width: self.view.frame.width, height: self.view.frame.width)
                self.thumbnailImagesScrollView.addSubview(imageView)
            }
        }
    }
    
    func attributedText(withString string: String, boldString: String, font: UIFont) -> NSAttributedString {
        let attributedString = NSMutableAttributedString(string: string,
                                                         attributes: [NSAttributedString.Key.font: font])
        let boldFontAttribute: [NSAttributedString.Key: Any] = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: font.pointSize)]
        let range = (string as NSString).range(of: boldString)
        attributedString.addAttributes(boldFontAttribute, range: range)
        return attributedString
    }
    
    private func updateDetailImages() {
        viewModel.dishDetail.value.detailImages?.forEach { imageURL in
            NetworkManager().updateThumbImage(imageURL: imageURL) { imageData in
                guard let image = UIImage(data: imageData) else { return }
                let ratio = image.size.height / image.size.width
                
                let imageView = UIImageView(image: image)
                imageView.contentMode = .scaleAspectFit
                self.detailImagesStackView.addArrangedSubview(imageView)
                imageView.translatesAutoresizingMaskIntoConstraints = false
                imageView.heightAnchor.constraint(equalToConstant: ratio * self.view.frame.width).isActive = true
            }
        }
    }
}
