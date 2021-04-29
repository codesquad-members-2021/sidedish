//
//  ImageCacheCenter.swift
//  Sidedish
//
//  Created by Issac on 2021/04/29.
//

import UIKit

protocol ImageCacheable {
    var fileManager: FileManager { get }
    var cacheURL: URL { get }
    func cacheFileExists(fileName: String) -> Bool
    func loadImageCache(fileName: String, completion: @escaping (Data) -> ())
    func cachingImage(named: String, imageData: Data)
}

class ImageCacheCenter: ImageCacheable {
    let imageCache: NSCache<NSString, UIImage>
    var fileManager: FileManager {
        return FileManager.default
    }
    
    var cacheURL: URL {
        return fileManager.urls(for: .cachesDirectory, in: .userDomainMask)[0]
    }
    
    init() {
        self.imageCache = NSCache<NSString, UIImage>()
    }
    
    func cacheFileExists(fileName: String) -> Bool {
        let path = cacheURL.appendingPathComponent(fileName).path
        return fileManager.fileExists(atPath: path)
    }
    
    func loadImageCache(fileName: String, completion: @escaping (Data) -> ()) {
        let url = cacheURL.appendingPathComponent(fileName)
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            guard let data = data else { return }
            completion(data)
        }.resume()
    }
    
    func cachingImage(named: String, imageData: Data) {
        let path = cacheURL.appendingPathComponent(named).path
        let jpegData = UIImage(data: imageData)?.jpegData(compressionQuality: 0.4)
        if !cacheFileExists(fileName: named) {
            fileManager.createFile(atPath: path,
                                   contents: jpegData,
                                   attributes: nil)
        }
    }
}
