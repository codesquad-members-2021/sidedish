//
//  LocalOAuthClient.swift
//  Side-dish
//
//  Created by 조중윤 on 2021/04/27.
//

import Foundation

protocol OAuthClient {
    func getAuthPageUrl(state: String) -> URL?
    func exchangeCodeForToken(code: String,
                                  state: String,
                                  completion: @escaping (Result<TokenBag, Error>) -> Void)
}

struct TokenBag {
    let accessToken: String
}

class LocalOauthClient: OAuthClient {
    func exchangeCodeForToken(code: String, state: String, completion: @escaping (Result<TokenBag, Error>) -> Void) {
        print("meh")
    }
    
    func getAuthPageUrl(state: String) -> URL? {
        let clientID = "7f32a79b176298db2f2f"
        let redirect_uri = "hoonha.Side-dish://authentication"
        let urlString = "https://github.com/login/oauth/authorize?client_id=\(clientID)&redirect_uri=\(redirect_uri)&s&scopes=repo,user&state=\(state)"

        return URL(string: urlString)!
    }
}
