//
//  DetailViewController.swift
//  Side-dish
//
//  Created by 조중윤 on 2021/04/22.
//

import UIKit
import Combine

class DetailViewController: UIViewController {
    
    private var detailItem : Item!
    private var cancellable = Set<AnyCancellable>()
    private var detailViewModel: DetailViewModel!
    private var sideDishAmountViewModel:SideDishAmountViewModel!
    
    @IBOutlet weak var amountButtomViewModel: AmountButtonViewModel!
    @IBOutlet weak var thumbScrollView: UIScrollView!
    @IBOutlet weak var detailSectionStackView: UIStackView!
    @IBOutlet weak var detailContentView: DetailContenetView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = detailItem.title
        sideDishAmountViewModel = SideDishAmountViewModel()
        
        detailContentView.configure(with: detailItem)
        bind()
    }
    
    func bind() {
        detailViewModel.didFetchDetails { [weak self] (itemDetail) in
            self?.detailContentView.thumbImageLoad(images: itemDetail.thumbImages)
            self?.detailContentView.desctionImageLoad(desctionImage: itemDetail.detailSection)
            self?.detailContentView.deliveryInfoConfigure(with: itemDetail)
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
        
        sideDishAmountViewModel.bind(sPrice: detailItem.sPrice) { [weak self] (totalPrice, amount) in
            self?.detailContentView.amountConfigure(amount: amount, total: totalPrice)
        }
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
        self.detailItem = item
        self.detailViewModel.request(with: item.detailHash)
    }
    
}
