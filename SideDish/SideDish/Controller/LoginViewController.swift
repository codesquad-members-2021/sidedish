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
        
        let callbackUrlScheme = "codeissue"
        var url = config.authenticate()?.appending([URLQueryItem(name: "redirect_uri", value: "codeissue://tracker")])
        
        webAuthSession = ASWebAuthenticationSession.init(url: url!, callbackURLScheme: callbackUrlScheme, completionHandler: { (callBack:URL?, error:Error?) in
            
            // handle auth response
            guard error == nil, let successURL = callBack else {
                return
            }
            
            self.config.handleOpenURL(url: successURL) { config in
                self.loadCurrentUser(config: config) // purely optional of course
            }
        })
        
        // Kick it off
        webAuthSession?.presentationContextProvider = self
        webAuthSession?.start() 
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
//                print(user.login, user.email, user.name)
            case .failure(let error):
              print(error)
            }
          }
        }
    
    @IBAction func access(_ sender: UIButton) {
    }
    
}

extension URL {
    /// Returns a new URL by adding the query items, or nil if the URL doesn't support it.
    /// URL must conform to RFC 3986.
    func appending(_ queryItems: [URLQueryItem]) -> URL? {
        guard var urlComponents = URLComponents(url: self, resolvingAgainstBaseURL: true) else {
            // URL is not conforming to RFC 3986 (maybe it is only conforming to RFC 1808, RFC 1738, and RFC 2732)
            return nil
        }
        // append the query items to the existing ones
        urlComponents.queryItems = (urlComponents.queryItems ?? []) + queryItems

        // return the url from new url components
        return urlComponents.url
    }
}
