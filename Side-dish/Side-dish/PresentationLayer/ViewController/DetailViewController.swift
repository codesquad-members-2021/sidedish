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
        detailViewModel.didFetchDetails().sink { [weak self] (itemDetail) in
            self?.detailContentView.thumbImageLoad(images: itemDetail.thumbImages)
            self?.detailContentView.desctionImageLoad(desctionImage: itemDetail.detailSection)
            self?.detailContentView.deliveryInfoConfigure(with: itemDetail)
        }.store(in: &cancellable)
        
        detailViewModel.except().sink { [weak self] (error) in
            self?.triggerAlert(by: error)
        }.store(in: &cancellable)
        
        amountButtomViewModel.bind().sink { [weak self] (action) in
            switch action {
            case .plus:
                self?.sideDishAmountViewModel.amountState.Increase()
            case .minus:
                self?.sideDishAmountViewModel.amountState.Decrease()
            }
        }.store(in: &cancellable)
        
        sideDishAmountViewModel.bind(sPrice: detailItem.sPrice).sink { [weak self] (totalPrice, amount) in
            self?.detailContentView.amountConfigure(amount: amount, total: totalPrice)
        }.store(in: &cancellable)
    }
    
    private func triggerAlert(by error : String) {
        DispatchQueue.main.async { [weak self] in
            self?.present(Alert.create(title : error),animated: true)
        }
    }
    
    func dependDetail(detailViewModel: DetailViewModel) {
        self.detailViewModel = detailViewModel
    }
    
    func setItemInfo(from item: Item) {
        self.detailItem = item
        self.detailViewModel.request(with: item.detailHash)
    }
    
}
