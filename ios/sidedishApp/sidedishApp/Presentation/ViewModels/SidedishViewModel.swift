//
//  SidedishViewModel.swift
//  sidedishApp
//
//  Created by zombietux on 2021/04/19.
//

import Foundation
import Combine

class SidedishViewModel: SidedishViewModelType {
    private var main = Category(items: [])
    private var soup = Category(items: [])
    private var side = Category(items: [])
    private(set) var dataChanged = PassthroughSubject<Void, Never>()
    private var cancellables = Set<AnyCancellable>()
    private var sidedishUseCase: SidedishUseCasePort!
    
    init(sidedishUseCase: SidedishUseCasePort) {
        self.sidedishUseCase = sidedishUseCase
    }
    
    convenience init() {
        let sidedishUseCase = SidedishUseCase()
        self.init(sidedishUseCase: sidedishUseCase)
    }
    
    func getMainItems() -> [Item] {
        return self.main.categories()
    }
    
    func getSoupItems() -> [Item] {
        return self.soup.categories()
    }
    
    func getSideItems() -> [Item] {
        return self.side.categories()
    }
    
    func fetchMainData(path: String) {
        sidedishUseCase.getCategory(path: path)
            .receive(on: DispatchQueue.global())
            .sink(receiveCompletion: { (result)
                in switch result {
                case .finished: break
                case .failure(_): break }
                
            },
            receiveValue: { main in
                self.main = main
                self.dataChanged.send()
            })
            .store(in: &cancellables)
    }
    
    func fetchSoupData(path: String) {
        sidedishUseCase.getCategory(path: path)
            .receive(on: DispatchQueue.global())
            .sink(receiveCompletion: { (result)
                in switch result {
                case .finished: break
                case .failure(_): break }
                
            },
            receiveValue: { soup in
                self.soup = soup
                self.dataChanged.send()
            })
            .store(in: &cancellables)
    }
    
    func fetchSideData(path: String) {
        sidedishUseCase.getCategory(path: path)
            .receive(on: DispatchQueue.global())
            .sink(receiveCompletion: { (result)
                in switch result {
                case .finished: break
                case .failure(_): break }
                
            },
            receiveValue: { side in
                self.side = side
                self.dataChanged.send()
            })
            .store(in: &cancellables)
    }
}
