//
//  DetailPageViewController.swift
//  BanchanCode
//
//  Created by Song on 2021/04/28.
//

import UIKit

class DetailPageViewController: UIViewController {
    enum KeyColors {
        static let lineSeparatorColor = UIColor(named: "LineSeparatorColor")
        static let eventBadgeBackgroundColor = UIColor(named: "EventBadgeBackgroundColor")
        static let launchBadgeBackgroundColor = UIColor(named: "LaunchBadgeBackgroundColor")
    }
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel = makeDishDetailsViewModel()
        bind(to: viewModel)
        viewModel.load()
        
        setupViews()
    }
    
    func makeDishDetailsViewModel() -> DishDetailsViewModel? {
        guard let categoryName = categoryName else { return nil }
        guard let id = id else { return nil }
        return DefaultDishDetailsViewModel(fetchDishDetailsUseCaseFactory: makeFetchDishDetailsUseCase,
                                           categoryName: categoryName,
                                           id: id)
    }
    
    func makeFetchDishDetailsUseCase(requestValue: FetchDishDetailsUseCase.RequestValue,
                                     completion: @escaping (FetchDishDetailsUseCase.ResultValue) -> Void) -> UseCase {
        return FetchDishDetailsUseCase(requestValue: requestValue,
                                       completion: completion)
    }
    
    private func setupViews() {
        self.thumbnailImagesScrollView.isPagingEnabled = true
        orderButton.layer.masksToBounds = true
        orderButton.layer.cornerRadius = 5.0
        quantityLabel.layer.borderWidth = 1.0
        quantityLabel.layer.borderColor = KeyColors.lineSeparatorColor?.cgColor
        setupUI(of: addButton)
        setupUI(of: removeButton)
    }
    
    private func setupUI(of button: UIButton) {
        button.layer.borderWidth = 1.0
        button.layer.borderColor = KeyColors.lineSeparatorColor?.cgColor
    }
    
    @IBAction func addButtonPressed(_ sender: UIButton) {
        viewModel.increaseQuantity()
        viewModel.updateTotalPrice()
    }
    
    @IBAction func removeButtonPressed(_ sender: UIButton) {
        viewModel.decreaseQuantity()
        viewModel.updateTotalPrice()
    }
    
    private func bind(to viewModel: DishDetailsViewModel) {
        viewModel.basicInformation.observe(on: self) { [weak self] _ in self?.refreshView() }
        viewModel.thumbImages.observe(on: self) { [weak self] _ in self?.refreshThumbImages() }
        viewModel.detailImages.observe(on: self) { [weak self] _ in self?.refreshDetailImages() }
        viewModel.currentQuantity.observe(on: self) { [weak self] in self?.quantityLabel.text = "\($0)" }
        viewModel.totalPrice.observe(on: self) { [weak self] in
            self?.totalPriceLabel.text = String().format(price: $0)
            self?.removeButton.isEnabled = $0 > 0
        }
    }
    
    private func refreshView() {
        let basicInfo = viewModel.basicInformation.value
        self.title = basicInfo.name
        self.nameLabel.text = basicInfo.name
        self.descriptionLabel.text = basicInfo.description
        
        guard let prices = basicInfo.prices else { return }
        let originalPrice = prices[0]
        if prices.count > 1 {
            let lastPrice = prices[1]
            lastPriceLabel.text = String().format(price: lastPrice)
            originalPriceLabel.isHidden = false
            originalPriceLabel.attributedText = String().format(price: originalPrice)?.strikethrough()
            //totalPrice = currentQuantity * lastPrice
            viewModel.updateTotalPrice()
        } else {
            lastPriceLabel.text = String().format(price: originalPrice)
            originalPriceLabel.isHidden = true
            //totalPrice = currentQuantity * originalPrice
            viewModel.updateTotalPrice()
        }
        
        let badges = basicInfo.badges
        badgeStackView.arrangedSubviews.forEach { subview in
            subview.removeFromSuperview()
        }
        if badges?.count == 0 {
            badgeStackView.isHidden = true
        } else {
            badgeStackView.isHidden = false
            badges?.forEach { badgeString in
                let badgeView = BadgeView()
                badgeView.badgeLabel.text = badgeString
                badgeView.backgroundColor = badgeString == "이벤트특가" ? KeyColors.eventBadgeBackgroundColor : KeyColors.launchBadgeBackgroundColor
                badgeStackView.addArrangedSubview(badgeView)
            }
        }
        guard let point = basicInfo.point else { return }
        pointLabel.text = String().format(price: point)
        deliveryInfoLabel.text = basicInfo.deliveryInfo
        deliveryFeeLabel.attributedText = NSAttributedString().makeBold("(40,000원 이상 구매 시 무료)",
                                                                        within: "2,500원 (40,000원 이상 구매 시 무료)",
                                                                        font: .systemFont(ofSize: 14.0))
    }
    
    private func refreshThumbImages() {
        let thumbImages = viewModel.thumbImages.value
        thumbImages.enumerated().forEach { index, imageData in
            let image = UIImage(data: imageData)
            let imageView = UIImageView(image: image)
            self.thumbnailImagesScrollView.contentSize = CGSize(width: self.view.frame.width * CGFloat(thumbImages.count),
                                                                height: self.view.frame.width)
            imageView.frame = CGRect(x: self.view.frame.width * CGFloat(index), y: 0,
                                     width: self.view.frame.width, height: self.view.frame.width)
            self.thumbnailImagesScrollView.addSubview(imageView)
        }
    }
    
    private func refreshDetailImages() {
        detailImagesStackView.arrangedSubviews.forEach { subview in
            subview.removeFromSuperview()
        }
        let detailImages = viewModel.detailImages.value
        detailImages.forEach { imageData in
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
