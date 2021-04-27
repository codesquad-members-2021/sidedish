//
//  SidedishUseCasePort.swift
//  sidedishApp
//
//  Created by zombietux on 2021/04/20.
//

import Foundation
import Combine

protocol DetailUseCasePort {
    func getItem(path category: String, path id: Int) -> AnyPublisher<Detail, Error>
}
