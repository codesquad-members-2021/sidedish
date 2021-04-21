
import Foundation
import UIKit

class MainDiffableDataSource {
    
    private var dataSource : UICollectionViewDiffableDataSource<Int, Menu>!
    
    func setupDataSource(collectionView: UICollectionView) {
        self.dataSource = UICollectionViewDiffableDataSource<Int, Menu>(collectionView: collectionView) {
            (collectionView, indexPath, menu) -> UICollectionViewCell? in
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "menuCell", for: indexPath) as? MenuCell else { preconditionFailure() }
            
            menu.configure(cell: cell)
            return cell
        }
    }
    
    func applySnapshot(data: [Menu]) {
        let menus = data
        var snapshot = NSDiffableDataSourceSnapshot<Int, Menu>()
        snapshot.appendSections([1])
        snapshot.appendItems(menus)
        self.dataSource.apply(snapshot, animatingDifferences: true)
    }
}
