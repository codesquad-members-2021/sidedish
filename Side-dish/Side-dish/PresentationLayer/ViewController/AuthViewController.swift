//
//  AuthViewController.swift
//  Side-dish
//
//  Created by 조중윤 on 2021/04/26.
//

import UIKit

class AuthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
    }
    
    @IBAction func loginButton(_ sender: UIButton) {
        guard let tempVC = self.storyboard?.instantiateViewController(withIdentifier: "TempViewController") as? TempViewController else {
            print("meh")
            return
        }
        navigationController?.navigationBar.isHidden = false
        self.navigationController?.pushViewController(tempVC, animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
    }
}
