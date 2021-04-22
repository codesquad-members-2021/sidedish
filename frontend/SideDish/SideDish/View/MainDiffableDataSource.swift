
import Foundation
import UIKit

class MainDiffableDataSource {
    
    enum sectionTitle: String, CaseIterable {
        case main = "모두가 좋아하는 든든한 메인요리"
        case soup = "정성이 담긴 뜨끈뜨끈 국물요리"
        case side = "식탁을 풍성하게 하는 정갈한 밑반찬"
    }
    
    private var dataSource : UICollectionViewDiffableDataSource<sectionTitle, Menu>!
    
    func setupDataSource(collectionView: UICollectionView) {
        self.dataSource = UICollectionViewDiffableDataSource<sectionTitle, Menu>(collectionView: collectionView) {
            (collectionView, indexPath, menu) -> UICollectionViewCell? in
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "menuCell", for: indexPath) as? MenuCell else { preconditionFailure() }
            
            menu.configure(cell: cell)
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
    
    func applySnapshot(menu:[Menu], section: sectionTitle) {
        var snapshot = self.dataSource.snapshot()
        snapshot.appendItems(menu, toSection: section)
        
        self.dataSource.apply(snapshot, animatingDifferences: true)
    }
    
    func setupHeader(collectionView: UICollectionView, kind: String, indexPath: IndexPath) -> UICollectionReusableView? {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "headerView", for: indexPath) as! HeaderView
        
        let section = self.dataSource.snapshot().sectionIdentifiers[indexPath.section]
        header.configureButtonName(text: section.rawValue)
        return header
    }
}
