//
//  FileManager.swift
//  Sidedish
//
//  Created by Ador on 2021/04/21.
//

import Foundation

class FileManagerService {
    // 캐시 데이터가 있는지 검사해서 있으면 리소스를 리턴
    func checkCacheData(with fileName: String) -> Data? {
        guard let cacheDirectory = FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask).first else {
            return nil
        }
        let file = cacheDirectory.appendingPathComponent(fileName)
        if FileManager.default.fileExists(atPath: file.path) {
            guard let imageData = try? Data(contentsOf: file) else {
                return nil
            }
            return imageData
        }
        return nil
    }
    
    func write(fileName: String, image: Data) {
        // 캐시 디렉토리에 이미지 저장
        guard let cacheDirectory = FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask).first else {
            return
        }
        let file = cacheDirectory.appendingPathComponent(fileName)
        do {
            try image.write(to: file)
        } catch {
            // error 처리
        }
    }
}
