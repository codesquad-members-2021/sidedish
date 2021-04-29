//
//  IntialViewController.swift
//  Side-dish
//
//  Created by 조중윤 on 2021/04/29.
//

import UIKit
import OctoKit
import KeychainSwift

class IntialViewController: UIViewController {
    let keychain = KeychainSwift()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    override func viewWillAppear(_ animated: Bool) {
        guard let mainViewController = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as? SideDishViewController else {
            return
        }
        
        mainViewController.dependInjectionViewModel(to: SideDishViewModel(sideDishUseCase: UsecaseGenerator.create()))
        
        if let validToken = keychain.get("myToken") {
            var config = TokenConfiguration(validToken)
            
            print("confing")
            config.accessToken = validToken
            Octokit(config).me() { (response) in
                switch response {
                case .success(_):
                    DispatchQueue.main.async {
                        self.navigationController?.pushViewController(mainViewController, animated: false)
                    }
                case .failure(_):
                    break
                }
            }
        } else {
            DispatchQueue.main.async {
                guard let authViewController = self.storyboard?.instantiateViewController(identifier: "AuthViewController") as? AuthViewController else {
                    return
                }
                
                self.navigationController?.pushViewController(authViewController, animated: true)
            }
        }
    }
}
