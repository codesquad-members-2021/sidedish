//
//  SceneDelegate.swift
//  Side-dish
//
//  Created by HOONHA CHOI on 2021/04/19.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let screen = (scene as? UIWindowScene) else { return }
                let viewController = ViewController()
                window = UIWindow(frame: screen.coordinateSpace.bounds)
                window?.windowScene = screen
                window?.rootViewController = UINavigationController(rootViewController: viewController)
                window?.makeKeyAndVisible()
    }
}


