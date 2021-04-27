//
//  OAuthService.swift
//  Side-dish
//
//  Created by 조중윤 on 2021/04/27.
//

import Foundation

class OAuthService {
    enum OAuthError: Error {
        case malformedLink
        case exchangeFailed
    }
    
    private let oauthClient: OAuthClient
    private var state: String?
    var onAuthenticationResult: ((Result<TokenBag, Error>) -> Void)?

    init(oauthClient: OAuthClient) {
        self.oauthClient = oauthClient
    }

    func getAuthPageUrl() -> URL? {
        state = UUID().uuidString
        return oauthClient.getAuthPageUrl(state: state!)
    }
    
    func exchangeCodeForToken(url: URL) {
            guard let state = state, let code = getCodeFromUrl(url: url) else {
                onAuthenticationResult?(.failure(OAuthError.malformedLink))
                return
            }
            
            oauthClient.exchangeCodeForToken(code: code, state: state) { [weak self] result in
                switch result {
                case .success(let tokenBag):
                    self?.onAuthenticationResult?(.success(tokenBag))
                case .failure:
                    self?.onAuthenticationResult?(.failure(OAuthError.exchangeFailed))
                }
            }
        }
}

//MARK: - Private Methods
private extension OAuthService {
    func getCodeFromUrl(url: URL) -> String? {
        let components = URLComponents(url: url, resolvingAgainstBaseURL: true)
        let code = components?.queryItems?.first(where: { $0.name == "code" })?.value
        let state = components?.queryItems?.first(where: { $0.name == "state" })?.value
        
        if let code = code, let state = state, state == self.state {
            return code
        } else {
            return nil
        }
    }
}
