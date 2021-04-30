//
//  ImageUseCase.swift
//  Side-dish
//
//  Created by HOONHA CHOI on 2021/04/21.
//

import Foundation
import Combine

class ImageUseCase {

    static func execute(imageURLString: String) -> AnyPublisher<Data, Never> {
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
}
