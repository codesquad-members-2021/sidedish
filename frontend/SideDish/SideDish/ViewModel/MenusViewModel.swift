
import Foundation

class MenusViewModel {
    private(set) var mainViewModel: [MenuViewModel]
    private(set) var soupViewModel: [MenuViewModel]
    private(set) var sideViewModel: [MenuViewModel]
    private var fetchMenuUseCase: FetchMenuUseCase
    
    init() {
        self.mainViewModel = []
        self.soupViewModel = []
        self.sideViewModel = []
        self.fetchMenuUseCase = FetchDataUseCase()
    }
    
    func fetchData() {
        self.fetchMenuUseCase.loadMenu(of: .main) { menuList in
            self.add(menuList: menuList, section: .main)
        }
        self.fetchMenuUseCase.loadMenu(of: .soup) { menuList in
            self.add(menuList: menuList, section: .soup)
        }
        self.fetchMenuUseCase.loadMenu(of: .side) { menuList in
            self.add(menuList: menuList, section: .side)
        }
    }
    
    func add(menuList: [Menu], section:MainDiffableDataSource.sectionTitle) {
        let viewModelList = matchingViewModel(menuList: menuList)
        switch section {
        case .main:
            self.mainViewModel = viewModelList
        case .soup:
            self.soupViewModel = viewModelList
        case .side:
            self.sideViewModel = viewModelList
        }
        NotificationCenter.default.post(name: MenusViewModel.changeMenu, object: self)
    }
    
    func giveMenus(section: MainDiffableDataSource.sectionTitle) -> [MenuViewModel] {
        switch section {
        case .main:
            return mainViewModel
        case .soup:
            return soupViewModel
        case .side:
            return sideViewModel
        }
    }
    
    func matchingViewModel(menuList: [Menu]) -> [MenuViewModel] {
        let viewModelList: [MenuViewModel] = menuList.map() { menu in
            let nPrice = stringToAttributedString(menu.nPrice)
            let viewModel = MenuViewModel(hash: menu.detailHash, image: menu.image, title: menu.title, body: menu.description, sPrice: menu.sPrice, nPrice: nPrice, badges: menu.badge ?? [])
            return viewModel
        }
        return viewModelList
    }
    
    func stringToAttributedString(_ price: String?) -> NSAttributedString {
        if let pastPrice = price {
            let attributeString: NSMutableAttributedString =  NSMutableAttributedString(string: "\(pastPrice)원")
            attributeString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 2, range: NSMakeRange(0, attributeString.length))
            return attributeString
        } else {
            return NSMutableAttributedString(string: "")
        }
    }
    
    func returnHash(indexPath: IndexPath) -> String? {
        switch indexPath.section {
        case 0:
            return mainViewModel[indexPath.row].hash
        case 1:
            return soupViewModel[indexPath.row].hash
        case 2:
            return sideViewModel[indexPath.row].hash
        default:
            return nil
        }
    }
    
}

extension MenusViewModel {
    static let changeMenu = Notification.Name("changeMenu")
}
