//
//  SidedishNetworkCenter.swift
//  Sidedish
//
//  Created by Issac on 2021/04/19.
//

import Foundation
import Alamofire

protocol Networkable {
    func fetchItems(url: String, completion: @escaping (Result<[SidedishItem], AFError>) -> ())
    func fetchDetail(url: String, completion: @escaping (Result<DetailItem, AFError>) -> ())
    func downloadImage(from url: URL, completion: @escaping ((Data) -> ()) )
}

class SidedishNetworkCenter: Networkable {
    func fetchItems(url: String, completion: @escaping (Result<[SidedishItem], AFError>) -> ()) {
        AF.request(url).validate().responseDecodable(of: SidedishOfCategory.self) { (response) in
            switch response.result {
            case .success(let sidedishOfCategory):
                self.fetchImage(sidedishOfCategory: sidedishOfCategory) { (sidedishOfCategory) in
                    completion(.success(sidedishOfCategory.body) )
                }
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
    func fetchDetail(url: String, completion: @escaping (Result<DetailItem, AFError>) -> ()) {
        AF.request(url).validate().responseDecodable(of: Detail.self) { (response) in
            switch response.result {
            case .success(let detail):
                self.fetchDetailImgae(detail: detail) { (detail) in
                    completion(.success(detail.data))
                }
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
    private func fetchImage(sidedishOfCategory: SidedishOfCategory, completion: @escaping (SidedishOfCategory) -> ()) {
        var originalSidedishs = sidedishOfCategory
        for (index, item) in sidedishOfCategory.body.enumerated() {
            guard let url = URL(string: item.imageURL) else { return }
            self.downloadImage(from: url) { (data) in
                originalSidedishs.body[index].imageData = data
                completion(originalSidedishs)
            }
        }
    }
    
    private func fetchDetailImgae(detail: Detail, completion: @escaping (Detail) -> ()) {
        let originalDetail = detail
        guard let url = URL(string: originalDetail.data.topImageURL) else { return }
        self.downloadImage(from: url) { (data) in
            originalDetail.data.topImageData = data
            completion(originalDetail)
        }
        
        originalDetail.data.thumbImagesData = Array(repeating: nil, count: originalDetail.data.thumbImagesURL.count)
        for (index, thumbImageURL) in originalDetail.data.thumbImagesURL.enumerated() {
            guard let url = URL(string: thumbImageURL) else { return }
            self.downloadImage(from: url) { (data) in
                originalDetail.data.thumbImagesData?[index] = data
                completion(originalDetail)
            }
        }
        
        originalDetail.data.detailSectionData = Array(repeating: nil, count: originalDetail.data.detailSectionURL.count)
        for (index, detailSectionURL) in originalDetail.data.detailSectionURL.enumerated() {
            guard let url = URL(string: detailSectionURL) else { return }
            self.downloadImage(from: url) { (data) in
                originalDetail.data.detailSectionData?[index] = data
                completion(originalDetail)
            }
        }
    }
    
    func downloadImage(from url: URL, completion: @escaping ((Data) -> ()) ) {
        URLSession.shared.dataTask(with: url) { (data, _, error) in
            if let error = error {
                #if DEBUG
                NSLog(error.localizedDescription)
                #endif
                return
            }
            guard let imageData = data else {
                return
            }
            completion(imageData)
        }.resume()
    }
}
