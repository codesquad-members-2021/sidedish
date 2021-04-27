//
//  AuthViewController.swift
//  Side-dish
//
//  Created by 조중윤 on 2021/04/26.
//

import UIKit
import SafariServices

class AuthViewController: UIViewController {
    let oAuthService: OAuthService
        init(oAuthService: OAuthService) {
            self.oAuthService = oAuthService
            super.init(nibName: nil, bundle: nil)
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("sdf")
        navigationController?.navigationBar.isHidden = true
    }
    
    @IBAction func loginButton(_ sender: UIButton) {
//        guard let tempVC = self.storyboard?.instantiateViewController(withIdentifier: "TempViewController") as? TempViewController else {
//            print("meh")
//            return
//        }
//        navigationController?.navigationBar.isHidden = false
//        self.navigationController?.pushViewController(tempVC, animated: true)
        guard let url = oAuthService?.getAuthPageUrl() else { return }

               let safariVC = SFSafariViewController(url: url)
               safariVC.modalPresentationStyle = .fullScreen
               present(safariVC, animated: true, completion: nil)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
    }
}
