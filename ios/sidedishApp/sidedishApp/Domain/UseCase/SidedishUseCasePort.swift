//
//  SidedishUseCasePort.swift
//  sidedishApp
//
//  Created by zombietux on 2021/04/20.
//

import Foundation
import Combine

protocol SidedishUseCasePort {
    func getMain() -> AnyPublisher<Main, Error>
    func getSoup() -> AnyPublisher<Soup, Error>
    func getSide() -> AnyPublisher<Side, Error>
}
