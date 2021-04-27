//
//  AuthViewController.swift
//  Side-dish
//
//  Created by 조중윤 on 2021/04/26.
//

import UIKit
import SafariServices

class AuthViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
    }
    
    @IBAction func loginButton(_ sender: UIButton) {
        let url: URL = URL(string: "https://www.google.com")!
        let safariVC = SFSafariViewController(url: url)
        safariVC.modalPresentationStyle = .fullScreen
        present(safariVC, animated: true, completion: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
    }
}
