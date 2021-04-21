//
//  SidedishViewModel.swift
//  sidedishApp
//
//  Created by zombietux on 2021/04/19.
//

import Foundation
import Combine

class SidedishViewModel: SidedishViewModelType {
    private var main = Main(items: [])
    private var soup = Soup(items: [])
    private var side = Side(items: [])
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
        return self.main.getItems()
    }
    
    func getSoupItems() -> [Item] {
        return self.soup.getItems()
    }
    
    func getSideItems() -> [Item] {
        return self.side.getItems()
    }
    
    func fetchData() {
        let mainPub = sidedishUseCase.getMain()
            .catch { error -> AnyPublisher<Main, Never> in
                return Just(Main(items: [])).eraseToAnyPublisher()
            }
            .eraseToAnyPublisher()
        
        let soupPub = sidedishUseCase.getSoup()
            .catch { error -> AnyPublisher<Soup, Never> in
                return Just(Soup(items: [])).eraseToAnyPublisher()
            }
            .eraseToAnyPublisher()
        
        let sidePub = sidedishUseCase.getSide()
            .catch { error -> AnyPublisher<Side, Never> in
                return Just(Side(items: [])).eraseToAnyPublisher()
            }
            .eraseToAnyPublisher()
        
        Publishers.CombineLatest3(mainPub, soupPub, sidePub)
            .receive(on: DispatchQueue.global())
            .sink(receiveValue: {
                self.main = $0.0
                self.soup = $0.1
                self.side = $0.2
                self.dataChanged.send()
            })
            .store(in: &cancellables)
    }
}
