//
//  IntialViewController.swift
//  Side-dish
//
//  Created by 조중윤 on 2021/04/29.
//

import UIKit
import OctoKit
import KeychainSwift
import Combine

class IntialViewController: UIViewController {
    private let keychain = KeychainSwift()
    private var subject = PassthroughSubject<ControllerType, Never>()
    private var cancell: AnyCancellable?
    
    enum ControllerType {
        case main
        case auth
        case fail
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
        bind()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        guard let validToken = keychain.get("myToken") else {
            subject.send(.auth)
            return
        }
        
        var config = TokenConfiguration(validToken)
        config.accessToken = validToken
        Octokit(config).me() { [weak self] (response) in
            switch response {
            case .success(_):
                self?.subject.send(.main)
            case .failure(_):
                self?.subject.send(.fail)
            }
        }
    }
    
    private func bind() {
        cancell = subject
            .receive(on: DispatchQueue.main)
            .sink { [weak self] (type) in
                switch type {
                case .main:
                    self?.moveViewController(viewController: self?.setSideDishViewController() ?? UIViewController())
                case .auth:
                    self?.moveViewController(viewController: self?.setAuthController() ?? UIViewController())
                case .fail:
                    self?.setFailMessage()
                }
            }
    }
    
    private func setSideDishViewController() -> UIViewController {
        guard let mainViewController = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as? SideDishViewController else {
            return UIViewController()
        }
        mainViewController.dependInjectionViewModel(to: SideDishViewModel(sideDishUseCase: UsecaseGenerator.create()))
        return mainViewController
    }
    
    private func setAuthController() -> UIViewController {
        guard let authViewController = self.storyboard?.instantiateViewController(identifier: "AuthViewController") as? AuthViewController else {
            return UIViewController()
        }
        return authViewController
    }
    
    private func setFailMessage() {
        DispatchQueue.main.async { [weak self] in
            self?.present(Alert.create(title: "인증에 실패하였습니다."), animated: true)
        }
    }
    
    private func moveViewController(viewController: UIViewController) {
        self.navigationController?.pushViewController(viewController, animated: false)
    }
}
