//
//  SceneDelegate.swift
//  Side-dish
//
//  Created by HOONHA CHOI on 2021/04/19.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var dependencyContainer = AppDependencyContainer()
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let screen = (scene as? UIWindowScene) else { return }
        
        guard let rootViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "AuthViewController") as? AuthViewController else {
            return
        }
        
        rootViewController.oAuthService = OAuthService(oauthClient: LocalOauthClient())
        
        window = UIWindow(frame: screen.coordinateSpace.bounds)
        window?.windowScene = screen
        window?.rootViewController = UINavigationController(rootViewController: rootViewController)
        window?.makeKeyAndVisible()
    }
    
    // app will react to the custom URL schema and we need to handle it properly. To be notified when such interaction happen while the app is in the foreground we need to override this method of the Scene delegate
    func scene(_ scene: UIScene, openURLContexts URLContexts: Set<UIOpenURLContext>) {
            if let urlContext = URLContexts.first {
                let url = urlContext.url
                if let deepLink = DeepLink(url: url) {
                    dependencyContainer.deepLinkHandler.handleDeepLinkIfPossible(deepLink: deepLink)
                }
            }
        }
}


