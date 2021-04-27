//
//  SceneDelegate.swift
//  SideDish
//
//  Created by 심영민 on 2021/04/20.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    private let appDIContainer = AppDIContainer()
    private var flowCoordinator: AppFlowCoordinator?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        let navigationController = UINavigationController()
        window?.rootViewController = navigationController
        flowCoordinator = AppFlowCoordinator(navigationController: navigationController, appDIContainer: appDIContainer)
        flowCoordinator?.start()
        window?.makeKeyAndVisible()
    }
}

