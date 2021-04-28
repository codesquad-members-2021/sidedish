//
//  AmountButtonViewModel.swift
//  Side-dish
//
//  Created by HOONHA CHOI on 2021/04/23.
//

import UIKit
import Combine

class AmountButtonViewModel: NSObject {
    enum Action {
        case plus
        case minus
    }
    
    private var buttonSelect = PassthroughSubject<Action, Never>()
    private var cancell : AnyCancellable?
    
    @IBAction func plus(_ sender: UIButton) {
        buttonSelect.send(.plus)
    }
    
    @IBAction func minus(_ sender: UIButton) {
        buttonSelect.send(.minus)
    }
    
    func bind() -> AnyPublisher<Action, Never> {
        return buttonSelect.eraseToAnyPublisher()
    }
}
