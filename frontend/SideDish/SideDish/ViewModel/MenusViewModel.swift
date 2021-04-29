
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
        self.fetchMenuUseCase.loadMenu(of: .main) { menuList, categoryId in
            self.add(menuList: menuList, categoryId: categoryId, section: .main)
        }
        self.fetchMenuUseCase.loadMenu(of: .soup) { menuList, categoryId in
            self.add(menuList: menuList, categoryId: categoryId, section: .soup)
        }
        self.fetchMenuUseCase.loadMenu(of: .side) { menuList, categoryId in
            self.add(menuList: menuList, categoryId: categoryId, section: .side)
        }
    }
    
    func add(menuList: [Menu], categoryId: Int, section:MainDiffableDataSource.sectionTitle) {
        let viewModelList = matchingViewModel(menuList: menuList)
        switch section {
        case .main:
            self.mainViewModel = viewModelList
            self.mainViewModel.forEach { $0.configureCategoryId(categoryId: categoryId) }
        case .soup:
            self.soupViewModel = viewModelList
            self.soupViewModel.forEach { $0.configureCategoryId(categoryId: categoryId) }
        case .side:
            self.sideViewModel = viewModelList
            self.sideViewModel.forEach { $0.configureCategoryId(categoryId: categoryId) }
        }
        NotificationCenter.default.post(name: Notification.Name.fetchMenu, object: self)
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
            let price = menu.normalPrice == nil ? nil : String(menu.normalPrice!)
            let nPrice = stringToAttributedString(price)
            let badges = menu.badge == [nil] ? [] : menu.badge.map{ $0! }
            let viewModel = MenuViewModel(hash: menu.detailHash, image: menu.image, title: menu.title, body: menu.description, sPrice: String(menu.salePrice), nPrice: nPrice, badges: badges)
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
    
    func returnCategoryId(indexPath: IndexPath) -> Int? {
        switch indexPath.section {
        case 0:
            return mainViewModel[indexPath.row].categoryId
        case 1:
            return soupViewModel[indexPath.row].categoryId
        case 2:
            return sideViewModel[indexPath.row].categoryId
        default:
            return nil
        }
    }
    
}

extension Notification.Name {
    static let fetchMenu = Notification.Name("fetchMenu")
    static let fetchDetailMenu = Notification.Name("fetchDetailMenu")
}
