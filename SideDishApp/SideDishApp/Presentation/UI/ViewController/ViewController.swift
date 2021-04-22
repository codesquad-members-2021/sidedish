//
//  ViewController.swift
//  SideDishApp
//
//  Created by 오킹 on 2021/04/20.
//

import UIKit
import Combine

class ViewController: UIViewController {

    private let menuListViewModel = MenuListViewModel()
    private var subscriptions = Set<AnyCancellable>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bind()
        menuListViewModel.requestDishes()
     
    }
    
    func bind() {
        menuListViewModel.$main
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { _ in
                //error
            }, receiveValue: { _ in
                print("메인 화면처리 해야함")
            })
            .store(in: &subscriptions)
        
        menuListViewModel.$soup
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { _ in
                //error
            }, receiveValue: { _ in
                print("수프 화면처리 해야함")
            })
            .store(in: &subscriptions)
        
        menuListViewModel.$side
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { _ in
                //error
            }, receiveValue: { _ in
                print("사이드 화면처리 해야함 ")
            })
            .store(in: &subscriptions)
    }
}

