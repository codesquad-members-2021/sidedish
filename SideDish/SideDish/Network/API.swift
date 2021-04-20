//
//  API.swift
//  SideDish
//
//  Created by 박혜원 on 2021/04/20.
//

import Alamofire
import Foundation

enum CardAPIURL : String, CodingKey {
    case main
    case soup
    case side
    
    static let baseURL = "https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/"
    var path : String { self.stringValue }
    var url : URL { URL(string: CardAPIURL.baseURL + path)! }
}

class API {
    static let shared : API = API()
    private var request: DataRequest? {
        didSet {
            oldValue?.cancel()
        }
    }
    
    func loadMainDish(completion: @escaping ([CardResponse]) -> Void){
        self.request = AF.request(CardAPIURL.main.url, method: .get)
        self.request?
            .validate()
            .validate(contentType: ["application/json"])
            .responseDecodable(of: CardsResponse.self) { (response) in
                debugPrint(response)
                switch response.result {
                case .success(let cards):
                    completion(cards.body)
                case .failure(let error):
                    print(error)
                }
            }
    }
    func loadSoup(){
        
    }
    func loadSide(){
        
    }
}
