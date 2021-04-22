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
    
    func fetchMainData() {
        sidedishUseCase.getMain()
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
    
    func fetchSoupData() {
        sidedishUseCase.getSoup()
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
    
    func fetchSideData() {
        sidedishUseCase.getSide()
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
