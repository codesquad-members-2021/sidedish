//
//  LoginViewController.swift
//  SideDish
//
//  Created by 양준혁 on 2021/04/20.
//

import AuthenticationServices
import OctoKit
import UIKit

class LoginViewController: UIViewController, ASWebAuthenticationPresentationContextProviding {
    
    var tokenConfig : TokenConfiguration? = nil
    let config = OAuthConfiguration.init(token: "319c95b5ae914efeb32c", secret: "c08f393c6a1af1cd54ea519f191a595bb690ffb6", scopes: ["repo", "read:org"])
    var webAuthSession: ASWebAuthenticationSession?

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func presentationAnchor(for session: ASWebAuthenticationSession) -> ASPresentationAnchor {
        return self.view.window ?? ASPresentationAnchor()
    }
    
    func loadCurrentUser(config: TokenConfiguration) {
          Octokit(config).me() { response in
            switch response {
            case .success(let user):
                DispatchQueue.main.async {
                    let home = self.storyboard?.instantiateViewController(withIdentifier: "Home")
                    home?.modalTransitionStyle = .flipHorizontal
                    home?.modalPresentationStyle = .fullScreen
                    self.present(home!, animated: true, completion: nil)
                }
            case .failure(let error):
              print(error)
            }
          }
        }
    
    @IBAction func access(_ sender: UIButton) {
        let callbackUrlScheme = "codeissue"
        let url = config.authenticate()?.appending([URLQueryItem(name: "redirect_uri", value: "codeissue://tracker")])
        
        webAuthSession = ASWebAuthenticationSession.init(url: url!, callbackURLScheme: callbackUrlScheme, completionHandler: { (callBack:URL?, error:Error?) in
            guard error == nil, let successURL = callBack else { return }
            self.config.handleOpenURL(url: successURL) { config in
                self.loadCurrentUser(config: config)
            }
        })
        webAuthSession?.presentationContextProvider = self
        webAuthSession?.start()
    }
    
}

extension URL {
    func appending(_ queryItems: [URLQueryItem]) -> URL? {
        guard var urlComponents = URLComponents(url: self, resolvingAgainstBaseURL: true) else { return nil }
        urlComponents.queryItems = (urlComponents.queryItems ?? []) + queryItems
        return urlComponents.url
    }
}
