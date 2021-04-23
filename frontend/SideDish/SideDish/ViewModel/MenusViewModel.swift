
import Foundation

class MenusViewModel {
    private var mainViewModel: [MenuViewModel]?
    private var soupViewModel: [MenuViewModel]?
    private var sideViewModel: [MenuViewModel]?
    
    init() {
        self.mainViewModel = nil
        self.soupViewModel = nil
        self.sideViewModel = nil
    }
    
    func add(menuList: [Menu]?, section:MainDiffableDataSource.sectionTitle) {
        let viewModelList = matchingViewModel(menuList: menuList)
        switch section {
        case .main:
            self.mainViewModel = viewModelList
        case .soup:
            self.soupViewModel = viewModelList
        case .side:
            self.sideViewModel = viewModelList
        }
    }
    
    func giveMenus(section: MainDiffableDataSource.sectionTitle) -> [MenuViewModel]? {
        switch section {
        case .main:
            return mainViewModel
        case .soup:
            return soupViewModel
        case .side:
            return sideViewModel
        }
    }
    
    func matchingViewModel(menuList: [Menu]?) -> [MenuViewModel] {
        guard let menuList = menuList else { return [] }
        let viewModelList: [MenuViewModel] = menuList.map() { menu in
            let viewModel = MenuViewModel()
            let n_price = setPrice(menu.n_price)
            let badges = setBadges(menu.badge)
            viewModel.configure(image: menu.image, title: menu.title, body: menu.description, s_price: menu.s_price, n_price: n_price, badges: badges)
            return viewModel
        }
        return viewModelList
    }
    
    func setPrice(_ price: String?) -> NSAttributedString {
        if let pastPrice = price {
            let attributeString: NSMutableAttributedString =  NSMutableAttributedString(string: "\(pastPrice)원")
            attributeString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 2, range: NSMakeRange(0, attributeString.length))
            return attributeString
        } else {
            return NSMutableAttributedString(string: "")
        }
    }
    
    func validate(pastPrice: String?) -> NSMutableAttributedString {
        if let pastPrice = pastPrice {
            let attributeString: NSMutableAttributedString =  NSMutableAttributedString(string: "\(pastPrice)원")
            attributeString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 2, range: NSMakeRange(0, attributeString.length))
            return attributeString
        } else {
            return NSMutableAttributedString(string: "")
        }
    }
    
    func setBadges(_ badges: [String]?) -> [String] {
        if let badges = badges {
            return badges
        } else {
            return []
        }
    }
}
