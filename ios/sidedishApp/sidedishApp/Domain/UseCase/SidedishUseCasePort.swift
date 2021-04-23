//
//  SidedishUseCasePort.swift
//  sidedishApp
//
//  Created by zombietux on 2021/04/20.
//

import Foundation
import Combine

protocol SidedishUseCasePort {
    func getCategory(path: String) -> AnyPublisher<Category, Error>
}
