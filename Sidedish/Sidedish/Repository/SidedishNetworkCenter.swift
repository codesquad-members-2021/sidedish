//
//  SidedishNetworkCenter.swift
//  Sidedish
//
//  Created by Issac on 2021/04/19.
//

import Foundation
import Alamofire

protocol Networkable {
    func fetchItem<T: Decodable>(url: String, completion: @escaping (Result<T, AFError>) -> ())
    func downloadImage(from url: URL, completion: @escaping ((Data) -> ()) )
}

class SidedishNetworkCenter: Networkable {
    var imageCacheCenter: ImageCacheable
    
    init(imageCacheable: ImageCacheable) {
        self.imageCacheCenter = imageCacheable
    }
    
    func fetchItem<T: Decodable>(url: String, completion: @escaping (Result<T, AFError>) -> ()) {
        AF.request(url).validate().responseDecodable(of: T.self) { (response) in
            switch response.result {
            case .success(let value):
                if ((value as? SidedishOfCategory) != nil) {
                    self.fetchImage(sidedishOfCategory: value) { (sidedishOfCategory) in
                        completion(.success(sidedishOfCategory))
                    }
                } else if ((value as? Detail) != nil) {
                    self.fetchDetailImgae(detail: value) { (detail) in
                        completion(.success(detail))
                    }
                }
                
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
    private func fetchImage<T>(sidedishOfCategory: T, completion: @escaping (T) -> ()) {
        guard var originalSidedishs = sidedishOfCategory as? SidedishOfCategory else { return }
        for (index, item) in originalSidedishs.body.enumerated() {
            guard let url = URL(string: item.imageURL) else { return }
            
            if imageCacheCenter.cacheFileExists(fileName: url.lastPathComponent) {
                imageCacheCenter.loadImageCache(fileName: url.lastPathComponent) { (data) in
                    originalSidedishs.body[index].imageData = data
                    guard let originalSidedishs = originalSidedishs as? T else { return }
                    completion(originalSidedishs)
                }
            } else {
                self.downloadImage(from: url) { (data) in
                    originalSidedishs.body[index].imageData = data
                    guard let originalSidedishs = originalSidedishs as? T else { return }
                    completion(originalSidedishs)
                }
            }
        }
    }
    
    private func fetchDetailImgae<T>(detail: T, completion: @escaping (T) -> ()) {
        guard let originalDetail = detail as? Detail else { return }
        guard let url = URL(string: originalDetail.data.topImageURL) else { return }
        if imageCacheCenter.cacheFileExists(fileName: url.lastPathComponent) {
            imageCacheCenter.loadImageCache(fileName: url.lastPathComponent) { (data) in
                originalDetail.data.topImageData = data
                guard let originalDetail = originalDetail as? T else { return }
                completion(originalDetail)
            }
        } else {
            self.downloadImage(from: url) { (data) in
                originalDetail.data.topImageData = data
                guard let originalDetail = originalDetail as? T else { return }
                completion(originalDetail)
            }
        }
        
        originalDetail.data.thumbImagesData = Array(repeating: nil, count: originalDetail.data.thumbImagesURL.count)
        for (index, thumbImageURL) in originalDetail.data.thumbImagesURL.enumerated() {
            guard let url = URL(string: thumbImageURL) else { return }
            if imageCacheCenter.cacheFileExists(fileName: url.lastPathComponent) {
                imageCacheCenter.loadImageCache(fileName: url.lastPathComponent) { (data) in
                    originalDetail.data.thumbImagesData?[index] = data
                    guard let originalDetail = originalDetail as? T else { return }
                    completion(originalDetail)
                }
            } else {
                self.downloadImage(from: url) { (data) in
                    originalDetail.data.thumbImagesData?[index] = data
                    guard let originalDetail = originalDetail as? T else { return }
                    completion(originalDetail)
                }
            }
        }
        
        originalDetail.data.detailSectionData = Array(repeating: nil, count: originalDetail.data.detailSectionURL.count)
        for (index, detailSectionURL) in originalDetail.data.detailSectionURL.enumerated() {
            guard let url = URL(string: detailSectionURL) else { return }
            if imageCacheCenter.cacheFileExists(fileName: url.lastPathComponent) {
                imageCacheCenter.loadImageCache(fileName: url.lastPathComponent) { (data) in
                    originalDetail.data.detailSectionData?[index] = data
                    guard let originalDetail = originalDetail as? T else { return }
                    completion(originalDetail)
                }
            } else {
                self.downloadImage(from: url) { (data) in
                    originalDetail.data.detailSectionData?[index] = data
                    guard let originalDetail = originalDetail as? T else { return }
                    completion(originalDetail)
                }
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
            self.imageCacheCenter.cachingImage(named: url.lastPathComponent,
                                               imageData: imageData)
            completion(imageData)
        }.resume()
    }
}
