//
//  AppDelegate.swift
//  Side-dish
//
//  Created by HOONHA CHOI on 2021/04/19.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    private func registerDependencies() {
        DIContainer.shared.register(NetworkManager())
        let networkManager : NetworkManager = DIContainer.shared.resolve()
        DIContainer.shared.register(SideDishUseCase(networkManager: networkManager))
        let sideDishUseCase: SideDishUseCase =
            DIContainer.shared.resolve()
        
        DIContainer.shared.register(SideDishViewModel(sideDishUseCase: sideDishUseCase))
        DIContainer.shared.register(DetailViewModel(sideDishUseCase: sideDishUseCase))
    }
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        registerDependencies()
        return true
    }
}

