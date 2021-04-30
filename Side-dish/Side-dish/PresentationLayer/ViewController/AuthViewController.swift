//
//  AuthViewController.swift
//  Side-dish
//
//  Created by 조중윤 on 2021/04/26.
//

import UIKit
import OctoKit
import AuthenticationServices
import KeychainSwift

class AuthViewController: UIViewController, ASWebAuthenticationPresentationContextProviding {
    private let keychain = KeychainSwift()
    private var webAuthSession: ASWebAuthenticationSession?
    
    private let callbackUrlScheme = "side-dish"
    private let redirectURL = "redirect_uri"
    private let redirectValue = "side-dish://side-dish"
    private let scopes = ["repo", "read:org"]
    private var config: OAuthConfiguration!
    
    enum KeyType {
        case clientKey
        case secretKey
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
        config = OAuthConfiguration(token: getGitHubKey(type: .clientKey), secret: getGitHubKey(type: .secretKey), scopes: scopes)
    }
    
    @IBAction func loginButton(_ sender: UIButton) {
        guard let url = config.authenticate()?.addQueryItem(key: redirectURL, value: redirectValue) else {
            return
        }
        
        webAuthSession = ASWebAuthenticationSession.init(url: url, callbackURLScheme: callbackUrlScheme, completionHandler: { [weak self] (callBack:URL?, error:Error?) in
            
            guard error == nil else {
                self?.authenticateFail(message: error?.localizedDescription ?? "")
                return
            }
            guard let successURL = callBack else {
                self?.authenticateFail(message: error?.localizedDescription ?? "")
                return
            }
            
            self?.config.handleOpenURL(url: successURL) { config in
                self?.loadCurrentUser(config: config)
            }
        })
        webAuthSession?.presentationContextProvider = self
        webAuthSession?.start()
    }
    
    internal func presentationAnchor(for session: ASWebAuthenticationSession) -> ASPresentationAnchor {
        return self.view.window ?? ASPresentationAnchor()
    }
    
    private func loadCurrentUser(config: TokenConfiguration) {
        Octokit(config).me() { [weak self] response in
            switch response {
            case .success(_):
                self?.saveKeyChainToken(config: config)
                self?.popViewController()
            case .failure(let error):
                self?.authenticateFail(message: error.localizedDescription)
            }
        }
    }
    
    private func saveKeyChainToken(config: TokenConfiguration){
        let accessToken = config.accessToken ?? ""
        self.keychain.clear()
        self.keychain.set(accessToken, forKey: "myToken")
    }
    
    private func popViewController() {
        DispatchQueue.main.async { [weak self] in
            self?.navigationController?.popViewController(animated: true)
        }
    }
    
    private func authenticateFail(message: String) {
        DispatchQueue.main.async { [weak self] in
            self?.present(Alert.create(title: "인증에 실패하였습니다. \(message)"), animated: true)
        }
    }
    
    private func getGitHubKey(type: KeyType) -> String {
        guard let filePath = Bundle.main.path(forResource: "GitHubApiKey", ofType: "plist") else {
            return ""
        }
        let plist = NSDictionary(contentsOfFile: filePath)
        guard let value = plist?.object(forKey: "\(type)") as? String else {
            return ""
        }
        return value
    }
}
