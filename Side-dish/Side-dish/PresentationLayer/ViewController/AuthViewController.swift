//
//  AuthViewController.swift
//  Side-dish
//
//  Created by 조중윤 on 2021/04/26.
//

import UIKit
import OctoKit
import AuthenticationServices

extension URL {
    func appending(_ queryItems: [URLQueryItem]) -> URL? {
        guard var urlComponents = URLComponents(url: self, resolvingAgainstBaseURL: true) else {
            return nil
        }
        urlComponents.queryItems = (urlComponents.queryItems ?? []) + queryItems
        return urlComponents.url
    }
}

class AuthViewController: UIViewController, ASWebAuthenticationPresentationContextProviding {
    let config = OAuthConfiguration.init(token: "7f32a79b176298db2f2f", secret: "44930e822d299cf812b25f6cfe56273b8ce8aad6", scopes: ["repo", "read:org"])
    var tokenConfig : TokenConfiguration? = nil
    var webAuthSession: ASWebAuthenticationSession?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
    }
    
    @IBAction func loginButton(_ sender: UIButton) {
        let callbackUrlScheme = "side-dish"
        let url = config.authenticate()?.appending([URLQueryItem(name: "redirect_uri", value: "side-dish://side-dish")])
        
        webAuthSession = ASWebAuthenticationSession.init(url: url!, callbackURLScheme: callbackUrlScheme, completionHandler: { (callBack:URL?, error:Error?) in
            
            guard error == nil, let successURL = callBack else {
                return
            }
            
            self.config.handleOpenURL(url: successURL) { config in
                self.loadCurrentUser(config: config)
            }
        })
        webAuthSession?.presentationContextProvider = self
        webAuthSession?.start()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
    }
    
    func presentationAnchor(for session: ASWebAuthenticationSession) -> ASPresentationAnchor {
        return self.view.window ?? ASPresentationAnchor()
    }
    
    func loadCurrentUser(config: TokenConfiguration) {
        Octokit(config).me() { response in
            switch response {
            case .success(let user):
                DispatchQueue.main.async {
                    let targetVC = self.storyboard?.instantiateViewController(identifier: "TempViewController") as? TempViewController
                    self.navigationController?.pushViewController(targetVC!, animated: true)
                }
            case .failure(let error):
                print(error)
            }
        }
    }
}
