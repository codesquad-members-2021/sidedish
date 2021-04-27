//
//  OAuthService.swift
//  Side-dish
//
//  Created by 조중윤 on 2021/04/27.
//

import Foundation

class OAuthService {
    private let oauthClient: OAuthClient
    private var state: String?

    init(oauthClient: OAuthClient) {
        self.oauthClient = oauthClient
    }

    func getAuthPageUrl() -> URL? {
        state = UUID().uuidString
        return oauthClient.getAuthPageUrl(state: state!)
    }
}
