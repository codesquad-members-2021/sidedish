
import UIKit
import Toaster

class MainDiffableDataSource {
    
    enum sectionTitle: String, CaseIterable {
        case main = "모두가 좋아하는 든든한 메인요리"
        case soup = "정성이 담긴 뜨끈뜨끈 국물요리"
        case side = "식탁을 풍성하게 하는 정갈한 밑반찬"
    }
    
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
        
        self.dataSource.apply(snapshot, animatingDifferences: true)
    }
    
    func setupHeader(collectionView: UICollectionView, kind: String, indexPath: IndexPath) -> UICollectionReusableView? {
        let menuHeader = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "menuHeaderView", for: indexPath) as! MenuHeaderView
        
        let section = self.dataSource.snapshot().sectionIdentifiers[indexPath.section]
        menuHeader.configureLabelName(text: section.rawValue)
        
        
        let tap = CustomTapGestureRecognizer(target: self, action: #selector(labelPressed), section: section)
        menuHeader.addGestureRecognizer(tap)
        return menuHeader
    }
    
    @objc private func labelPressed(_ sender: CustomTapGestureRecognizer) {
         let cellCount = self.dataSource.snapshot().numberOfItems(inSection: sender.section)
         Toast(text: "\(cellCount)개 상품이 등록되어 있습니다.").show()
    }
}

class CustomTapGestureRecognizer: UITapGestureRecognizer {
    
    private(set) var section: MainDiffableDataSource.sectionTitle
    
    init(target: Any?, action: Selector?, section: MainDiffableDataSource.sectionTitle) {
        self.section = section
        super.init(target: target, action: action)
    }
}
