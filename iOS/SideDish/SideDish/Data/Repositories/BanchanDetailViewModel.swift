//
//  BanchanDetailViewModel.swift
//  SideDish
//
//  Created by 심영민 on 2021/04/27.
//

import UIKit
import Combine

struct BanchanDetailViewModelAction {
    let popBanchanDetail: () -> Void
}
enum AlertMessage: String {
    case success = "주문이 완료되었습니다."
    case failure = "재고가 부족합니다."
}


class BanchanDetailViewModel {
    
    private var fetchBanchanDetailUseCase: FetchBanchanDetailUseCase
    private var orderBanchanDetailUseCase: OrderBanchanUseCase
    private var action: BanchanDetailViewModelAction
    @Published var banchanDetail: BanchanDetail!
    private var hash: Int
    
    init(hash: Int, fetchBanchanDetailUseCase: FetchBanchanDetailUseCase, action: BanchanDetailViewModelAction) {
        self.hash = hash
        self.fetchBanchanDetailUseCase = fetchBanchanDetailUseCase
        self.orderBanchanDetailUseCase = DefaultOrderBanchanUseCase(network: DefaultNetworkSerivce())
        self.action = action
        fetchBanchanDetail()
    }
    
    func fetchBanchanDetail() {
        fetchBanchanDetailUseCase.execute(hash: hash) { (banchanDetail) in
            self.banchanDetail = banchanDetail
        }
    }
    
    func didTappedOrderButton(quantity: Int, completion: @escaping (Int?, NetworkError?) -> Void) {
        orderBanchanDetailUseCase.execute(hash: hash, quantity: quantity) { (result, error) in
            completion(result,error)
        }
    }
    
    func popBanchanDetail() {
        action.popBanchanDetail()
    }
    
    func makeAlert(message: AlertMessage) -> UIAlertController {
        let alert = UIAlertController(title: "", message: "", preferredStyle: .alert)
        
        switch message {
            case .failure:
                alert.message = message.rawValue
                let okAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                alert.addAction(okAction)
            case .success:
                alert.message = message.rawValue
                let okAction = UIAlertAction(title: "OK", style: .cancel, handler: { _ in
                    self.popBanchanDetail()
                })
                alert.addAction(okAction)
        }
        return alert
    }
}
