import Foundation
import Combine

protocol DetailNetworkManagerProtocol: class {
    func getItem(path category: String, path id: Int) -> AnyPublisher<Detail, Error>
}

class DetailNetworkManager: DetailNetworkManagerProtocol {

    private var networkManager: HttpMethodProtocol!
    
    init(networkManager: HttpMethodProtocol) {
        self.networkManager = networkManager
    }
    
    convenience init() {
        let networkManager = NetworkManager()
        self.init(networkManager: networkManager)
    }
    
    func getItem(path category: String, path id: Int) -> AnyPublisher<Detail, Error> {
        let endpoint = Endpoint.getDetail(path: category, path: id)
        return networkManager.get(type: Detail.self, url: endpoint.url)
    }
}
