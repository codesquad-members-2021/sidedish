//
//  DetailMenuViewController.swift
//  SideDish
//
//  Created by sonjuhyeong on 2021/04/27.
//

import UIKit
import Kingfisher

class DetailMenuViewController: UIViewController {

    private var detailHash: String?
    private var detailMenuViewModel = DetailMenuViewModel()
    private var orderViewModel = OrderViewModel()
    @IBOutlet weak var detailScrollView: DetailScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(configureViewModel), name: Notification.Name.fetchDetailMenu, object: detailMenuViewModel)
        
        self.detailScrollView.setCornerRadius()
        self.detailScrollView.setBorderWidth()
        configureThumbnailImageSize() 
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }

    func receive(categoryId: Int, detailHash: String) {
        self.detailMenuViewModel.send(categoryId: categoryId, detailHash: detailHash)
    }
    
    @objc func configureViewModel() {
        DispatchQueue.main.async {
            self.checkStock()
            self.navigationItem.title = self.detailMenuViewModel.title
            self.navigationItem.rightBarButtonItem = UIBarButtonItem.init(customView: UIView(frame: CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: 50, height: 100))))
            self.detailScrollView.title.text = self.detailMenuViewModel.title
            self.detailScrollView.body.text = self.detailMenuViewModel.productDescription
            self.configureBadges(verified: self.detailMenuViewModel.badges)
            self.detailScrollView.point.text = String(self.detailMenuViewModel.point)
            self.detailScrollView.salePrice.text = self.detailMenuViewModel.normalPrice
            self.detailScrollView.normalPrice.attributedText = self.detailMenuViewModel.salePrice
            self.detailScrollView.deliveryInfo.text = self.detailMenuViewModel.deliveryInfo
            self.detailScrollView.deliveryFee.text = self.detailMenuViewModel.deliveryFee
            self.detailScrollView.totalPrice.text = self.detailMenuViewModel.normalPrice
            self.configureThumbnailImage(imageStringArr: self.detailMenuViewModel.thumbImages)
            self.configureDetailStackViewImage(imageStringArr: self.detailMenuViewModel.detailSection)
        }
    }
    
    func checkStock() {
        if self.detailMenuViewModel.stock == 0 {
            self.detailScrollView.orderButton.setTitle("일시 품절", for: .normal)
            self.detailScrollView.orderButton.setTitleColor(.systemGray2, for: .normal)
            self.detailScrollView.orderButton.backgroundColor = UIColor.systemGray5
            self.detailScrollView.orderButton.isEnabled = false
        }
    }
    
    func configureThumbnailImageSize() {
        let width = self.view.frame.width

        self.detailScrollView.thumbnailImageWidthConstraint.constant = width
        self.detailScrollView.thumbnailImageHeightConstraint.constant = width
    }
    
    func configureBadges(verified: [Bool]) {
        switch verified {
        case [true, false]:
            self.detailScrollView.launchingBadge.isHidden = true
        case [false, true]:
            self.detailScrollView.eventBadge.isHidden = true
        case [false, false]:
            self.detailScrollView.badgeView.isHidden = true
        default:
            return
        }
    }
    
    func configureThumbnailImage(imageStringArr: [String]) {
        let width = self.detailScrollView.thumbnailImageWidthConstraint.constant
        self.detailScrollView.thumbnailImageWidthConstraint.constant = self.detailScrollView.thumbnailImageWidthConstraint.constant * CGFloat(imageStringArr.count)
        
        for index in 0..<imageStringArr.count {
            guard let url = URL(string: imageStringArr[index]) else { return }
            let xPos: CGFloat = width * CGFloat(index)
            let imageView = UIImageView(frame: CGRect(x: xPos, y: self.detailScrollView.thumbnailScrollView.bounds.minY, width: width, height: width))
            imageView.kf.setImage(with: url)
            self.detailScrollView.thumbnailScrollView.addSubview(imageView)
        }
    }
    
    func configureDetailStackViewImage(imageStringArr: [String]) {
        for image in imageStringArr {
            guard let url = URL(string: image) else { return }
            let imageView = UIImageView()
            imageView.widthAnchor.constraint(equalTo: imageView.heightAnchor, multiplier: 0.5).isActive = true
            imageView.kf.setImage(with: url)
            self.detailScrollView.detailStackView.addArrangedSubview(imageView)
        }
    }
    
    @IBAction func pressIncreaseButton(_ sender: UIButton) {
        self.orderViewModel.increaseOrderCount()
        self.detailScrollView.orderCount.text = "\(self.orderViewModel.orderCount)"
        let calculatedPrice = String(detailMenuViewModel.normalPriceToInt() * self.orderViewModel.orderCount)
        self.detailScrollView.totalPrice.text = "\(self.detailMenuViewModel.convertDecimal(string: calculatedPrice))원"
    }
    
    @IBAction func pressdecreaseButton(_ sender: UIButton) {
        self.orderViewModel.decreaseOrderCount()
        self.detailScrollView.orderCount.text = "\(self.orderViewModel.orderCount)"
        let calculatedPrice = String(detailMenuViewModel.normalPriceToInt() * self.orderViewModel.orderCount)
        self.detailScrollView.totalPrice.text = "\(self.detailMenuViewModel.convertDecimal(string: calculatedPrice))원"
    }
    
    @IBAction func pressedOrderButton(_ sender: UIButton) {
        if self.orderViewModel.isOrderAvailable(stock: self.detailMenuViewModel.stock) {
            APIRequestManager.orderPost(orderCount: OrderMenuRequest(count: self.orderViewModel.orderCount), url: URLManager.detailMenu(categoryId: self.detailMenuViewModel.categoryId, detailHash: self.detailMenuViewModel.detailHash), completion: { result in
                DispatchQueue.main.async {
                    if result {
                        let alert = UIAlertController(title: "주문 확인", message: "주문이 완료 되었습니다.", preferredStyle: .alert)
                        alert.addAction(UIAlertAction(title: "확인", style: .default, handler: { (action) in
                            alert.dismiss(animated: true, completion: nil)
                            self.navigationController?.popViewController(animated: true)
                        }))
                        self.present(alert, animated: true, completion: nil)
                    } else {
                        let alert = UIAlertController(title: "통신 오류", message: "인터넷 접속 상태를 확인해 주세요.", preferredStyle: .alert)
                        let action = UIAlertAction(title: "확인", style: .cancel, handler: nil)
                        alert.addAction(action)
                        self.present(alert, animated: true, completion: nil)
                    }
                }
            })
        } else {
            let message = "현재 주문하신 상품의 재고 수량이 \n \(self.detailMenuViewModel.stock)개 남았습니다.\n주문 수량을 다시 확인해 주시기 바랍니다."
            let alert = UIAlertController(title: "주문 실패", message: message, preferredStyle: .alert)
            let action = UIAlertAction(title: "확인", style: .default, handler: nil)
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
        }
    }
}

