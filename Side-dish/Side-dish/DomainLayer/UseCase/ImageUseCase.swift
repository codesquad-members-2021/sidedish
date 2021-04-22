//
//  ImageUseCase.swift
//  Side-dish
//
//  Created by HOONHA CHOI on 2021/04/21.
//

import Foundation
import Combine

class ImageUseCase {
    
    private var cancellable = Set<AnyCancellable>()
    private let fileManager = FileManager.default
    private let cachesDirectory = NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).first
    
    func loadImage(imageURL: String, handler: @escaping (String) -> Void) {
        let cacheURL = makeCacheImagePath(url: imageURL)
        fileExists(url: cacheURL.path) ? handler(cacheURL.path) :
            saveImage(imageURL: imageURL, savePath: cacheURL, complete: { (cachePath) in
            handler(cachePath)
        })
    }
    
    private func download(imageURLString: String) -> AnyPublisher<Data, Never> {
        guard let safeURL = URL(string: imageURLString) else {
            return Just(Data()).eraseToAnyPublisher()
        }
        return URLSession.shared.dataTaskPublisher(for: safeURL)
            .map({$0.data})
            .catch({ _ in
                return Just(Data()).eraseToAnyPublisher()
            })
            .eraseToAnyPublisher()
    }
    
    private func saveImage(imageURL: String, savePath: URL, complete: @escaping (String) -> Void) {
        download(imageURLString: imageURL)
            .sink { data in
                self.createFile(path: savePath.path, data: data)
                complete(savePath.path)
            }.store(in: &cancellable)
    }
    
    private func makeCacheImagePath(url: String) -> URL {
        return URL(fileURLWithPath: cachesDirectory ?? "").appendingPathComponent(URL(fileURLWithPath: url).lastPathComponent)
    }
    
    private func fileExists(url: String) -> Bool {
        return fileManager.fileExists(atPath: url)
    }
    
    private func createFile(path: String, data: Data) {
        fileManager.createFile(atPath: path, contents: data, attributes: nil)
    }
}
