
import UIKit
import Toaster

class MainDiffableDataSource {
    
    enum sectionTitle: String, CaseIterable {
        case main = "모두가 좋아하는 든든한 메인요리"
        case soup = "정성이 담긴 뜨끈뜨끈 국물요리"
        case side = "식탁을 풍성하게 하는 정갈한 밑반찬"
    }
    

    private var menuCount = [0,0,0]
    private var dataSource: UICollectionViewDiffableDataSource<sectionTitle, MenuViewModel>!
    
    func setupDataSource(collectionView: UICollectionView) {
        self.dataSource = UICollectionViewDiffableDataSource<sectionTitle, MenuViewModel>(collectionView: collectionView) {
            (collectionView, indexPath, menu) -> UICollectionViewCell? in
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "menuCell", for: indexPath) as? MenuCell else { preconditionFailure() }
            
            cell.configure(menu: menu)
            return cell
        }
        setHeaderSnapShot()
    }
    
    func setHeaderSnapShot() {
        self.dataSource.supplementaryViewProvider = setupHeader(collectionView: kind: indexPath:)
        var snapshot = self.dataSource.snapshot()
        snapshot.appendSections(sectionTitle.allCases)
        self.dataSource.apply(snapshot, animatingDifferences: true)
    }
    
    func applySnapshot(main: [MenuViewModel], soup: [MenuViewModel], side: [MenuViewModel]) {
        var snapshot = self.dataSource.snapshot()
        snapshot.appendItems(main, toSection: .main)
        snapshot.appendItems(soup, toSection: .soup)
        snapshot.appendItems(side, toSection: .side)
        
        menuCount[0] = snapshot.numberOfItems(inSection: .main)
        menuCount[1] = snapshot.numberOfItems(inSection: .soup)
        menuCount[2] = snapshot.numberOfItems(inSection: .side)
        
        self.dataSource.apply(snapshot, animatingDifferences: true)
    }
    
    func setupHeader(collectionView: UICollectionView, kind: String, indexPath: IndexPath) -> UICollectionReusableView? {
        let menuHeader = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "menuHeaderView", for: indexPath) as! MenuHeaderView
        
        let section = self.dataSource.snapshot().sectionIdentifiers[indexPath.section]
        menuHeader.configureLabelName(text: section.rawValue)
        
        
        let tap = CustomTapGestureRecognizer(target: self, action: #selector(labelPressed), cellCount: returnCount(section: indexPath.section))
        collectionView.addGestureRecognizer(tap)
        return menuHeader
    }
    
    @objc private func labelPressed(_ sender: CustomTapGestureRecognizer) {
        Toast(text: "\(sender.cellCount)개 상품이 등록되어 있습니다.").show()
    }
    
    func returnCount(section: Int) -> Int {
        if section == 0 {
            return menuCount[0]
        } else if section == 1 {
            return menuCount[1]
        } else if section == 2 {
            return menuCount[2]
        }
        return 0
    }
    
}
class CustomTapGestureRecognizer: UITapGestureRecognizer {
    private(set) var cellCount: Int
    
    init(target: Any?, action: Selector?, cellCount: Int) {
        self.cellCount = cellCount
        super.init(target: target, action: action)
    }
}
