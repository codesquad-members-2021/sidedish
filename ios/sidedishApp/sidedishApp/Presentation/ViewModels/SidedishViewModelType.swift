//
//  SidedishViewModelType.swift
//  sidedishApp
//
//  Created by zombietux on 2021/04/21.
//

import Foundation
import Combine

protocol SidedishViewModelType {
    var dataChanged: PassthroughSubject<Void, Never> { get }
    func getMainItems() -> [Item]
    func getSoupItems() -> [Item]
    func getSideItems() -> [Item]
    func fetchData()
}
