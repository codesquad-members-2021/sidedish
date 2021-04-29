//
//  ImageUseCase.swift
//  Side-dish
//
//  Created by HOONHA CHOI on 2021/04/21.
//

import UIKit
import Combine

class ImageLoader {
    
    private var cancellable = Set<AnyCancellable>()
    private let fileManager = FileManager.default
    private let cachesDirectory = NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).first
    
    func imageLoad(urlString: String) -> AnyPublisher<UIImage?, Never> {
        return load(imageURL: urlString)
            .receive(on: DispatchQueue.main)
            .map { UIImage(contentsOfFile: $0)}
            .eraseToAnyPublisher()
    }
    
    private func load(imageURL: String) -> AnyPublisher<String, Never>{
        let cacheURL = makeCacheImagePath(url: imageURL)
        return fileExists(url: cacheURL.path) ? Just(cacheURL.path).eraseToAnyPublisher() :
            saveImage(imageURL: imageURL, savePath: cacheURL)
    }
        
    private func saveImage(imageURL: String, savePath: URL) -> AnyPublisher<String, Never> {
        return download(imageURLString: imageURL)
            .flatMap { data -> AnyPublisher<String, Never> in
                self.createFile(path: savePath.path, data: data)
                return Just(savePath.path).eraseToAnyPublisher()
            }.eraseToAnyPublisher()
    }
    
    private func download(imageURLString: String) -> AnyPublisher<Data?, Never> {
        guard let safeURL = URL(string: imageURLString) else {
            return Just(nil).eraseToAnyPublisher()
        }
        return URLSession.shared.dataTaskPublisher(for: safeURL)
            .map { $0.data }
            .replaceError(with: nil)
            .eraseToAnyPublisher()
    }
    
    private func makeCacheImagePath(url: String) -> URL {
        return URL(fileURLWithPath: cachesDirectory ?? "").appendingPathComponent(URL(fileURLWithPath: url).lastPathComponent)
    }
    
    private func fileExists(url: String) -> Bool {
        return fileManager.fileExists(atPath: url)
    }
    
    private func createFile(path: String, data: Data?) {
        guard let data = data else {
             return
        }
        fileManager.createFile(atPath: path, contents: data, attributes: nil)
    }
}
