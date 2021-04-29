//
//  SceneDelegate.swift
//  Side-dish
//
//  Created by HOONHA CHOI on 2021/04/19.
//

import UIKit
import OctoKit
import KeychainSwift

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
    let keychain = KeychainSwift()
    var rootViewController: UIViewController?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let screen = (scene as? UIWindowScene) else { return }
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        
        guard let mainViewController = storyBoard.instantiateViewController(withIdentifier: "ViewController") as? SideDishViewController else {
            return
        }
        
        mainViewController.dependInjectionViewModel(to: SideDishViewModel(sideDishUseCase: UsecaseGenerator.create()))
        
        rootViewController = storyBoard.instantiateViewController(withIdentifier: "InitialViewController")

        window = UIWindow(frame: screen.coordinateSpace.bounds)
        window?.windowScene = screen
        window?.rootViewController = UINavigationController(rootViewController: rootViewController!)
        window?.makeKeyAndVisible()
        
        if let validToken = keychain.get("myToken") {
            var config = TokenConfiguration(validToken)
            // validToken was passed, but token value turned out optional again, 
            config.accessToken = validToken
            Octokit(config).me() { (response) in
                switch response {
                case .success(_):
                    DispatchQueue.main.async {
                        self.rootViewController?.navigationController?.pushViewController(storyBoard.instantiateViewController(withIdentifier: "ViewController"), animated: true)
                    }
                case .failure(let error):
                    print("Error: \(error)")
                }
            }
        } else {
            self.rootViewController?.navigationController?.pushViewController(storyBoard.instantiateViewController(withIdentifier: "AuthViewController"), animated: true)

        }
    }
}


