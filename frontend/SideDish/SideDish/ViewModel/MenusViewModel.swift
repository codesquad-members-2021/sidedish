
import Foundation

class MenusViewModel {
    private var mainViewModel: [MenuViewModel]
    private var soupViewModel: [MenuViewModel]
    private var sideViewModel: [MenuViewModel]
    
    init() {
        self.mainViewModel = []
        self.soupViewModel = []
        self.sideViewModel = []
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
    
    func matchingViewModel(menuList: [Menu]) -> [MenuViewModel] {
        let viewModelList: [MenuViewModel] = menuList.map() { menu in
            let nPrice = stringToAttributedString(menu.nPrice)
            let badges = setBadges(menu.badge)
            let viewModel = MenuViewModel(image: menu.image, title: menu.title, body: menu.description, sPrice: menu.sPrice, nPrice: nPrice, badges: badges)
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
    
    // badge 설정할 때, 메소드 이름 바꾸기!
    func setBadges(_ badges: [String]?) -> [String] {
        if let badges = badges {
            return badges
        } else {
            return []
        }
    }
}
