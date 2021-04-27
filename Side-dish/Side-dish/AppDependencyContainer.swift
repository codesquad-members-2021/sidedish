//
//  AppDependencyContainer.swift
//  Side-dish
//
//  Created by 조중윤 on 2021/04/27.
//

import Foundation

class AppDependencyContainer {
    let deepLinkHandler = DeepLinkHandler()
    
    func makeMainViewController() {
        let redirectUri = URL(string: "hoonha.Side-dish://authentication")!
//        let oAuthConfig = OAuthConfig(authorizationUrl: URL(string: "https://github.com/login/oauth/authorize")!,
//                                      tokenUrl: URL(string: "https://github.com/login/oauth/access_token")!,
//                                      clientId: "yourClientId",
//                                      clientSecret: "yourClientSecret",
//                                      redirectUri: redirectUri,
//                                      scopes: ["repo", "user"])
//        let oAuthClient = RemoteOAuthClient(config: oAuthConfig, httpClient: HTTPClient())
        let oAuthService = OAuthService(oauthClient: LocalOauthClient())
        let deepLinkCallback: (DeepLink) -> Void = { deepLink in
            if case .oAuth(let url) = deepLink {
                oAuthService.exchangeCodeForToken(url: url)
            }
        }
        deepLinkHandler.addCallback(deepLinkCallback, forDeepLink: DeepLink(url: redirectUri)!)
    }
}
