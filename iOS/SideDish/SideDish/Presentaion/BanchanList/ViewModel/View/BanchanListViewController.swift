//
//  ViewController.swift
//  SideDish
//
//  Created by 심영민 on 2021/04/20.
//

import UIKit

class BanchanListViewController: UIViewController {
    
    @IBOutlet weak var banchanCollectionView: BanchanCollectionView!
    
    var viewModel = BanchanListViewModel()
    lazy var dataSource = configureDataSource()
    
    typealias DataSource = UICollectionViewDiffableDataSource<Section, Banchan>
    typealias Snapshot = NSDiffableDataSourceSnapshot<Section, Banchan>
    typealias Section = BanchanListViewModel.Section
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.menu[.main] = [Banchan(hash: "1", image: URL(string: "https://pbs.twimg.com/profile_images/770139154898382848/ndFg-IDH.jpg")!, alt: "alt", title: "타이틀", description: "데스크립션", netPrice: 1000, salePrice: 1000, badge: [], delivery_type: [])]
        applySnapshot(animatingDifferences: false)
        banchanCollectionView.dataSource = self.dataSource
        banchanCollectionView.delegate = self
    }
}

// MARK: - DataSource
extension BanchanListViewController {
    func configureDataSource() -> DataSource {
        let dataSource = DataSource(collectionView: banchanCollectionView) { (collectionView, indexPath, banchan) -> UICollectionViewCell? in
                guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: BanchanCustomCell.identifer, for: indexPath) as? BanchanCustomCell else { return nil }
                let items = self.viewModel.menu[.main]
                let item = items![indexPath.item]
                let image = try? Data(contentsOf: item.image)
                cell.imageView.image = UIImage(data: image!)
                cell.titleLabel.text = item.title
                return cell
            }
        print("2")
        dataSource.supplementaryViewProvider = { (collectionView, kind, indexPath) in
            guard kind == UICollectionView.elementKindSectionHeader else { return nil }
            let section = self.dataSource.snapshot().sectionIdentifiers[indexPath.section]
            guard let view = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: BanchanCustomCellHeader.identifier, for: indexPath) as? BanchanCustomCellHeader else { return nil }
            view.titleLabel.text = section.rawValue
            return view
            
        }
        return dataSource
    }
    
    func applySnapshot(animatingDifferences: Bool = true) {
        var snapshot = Snapshot()
       
        snapshot.appendSections(Section.allCases)
        
        Section.allCases.forEach { section in
            guard let banchans = viewModel.getBanchans(section: section) else { return }
            print(banchans)
            snapshot.appendItems(banchans, toSection: section)
        }
        
        dataSource.apply(snapshot, animatingDifferences: animatingDifferences)
    }
}

// MARK: - UICollectionViewDataSource Implementation
//extension VideosViewController {
//  override func collectionView(
//    _ collectionView: UICollectionView,
//    didSelectItemAt indexPath: IndexPath
//  ) {
//    guard let video = dataSource.itemIdentifier(for: indexPath) else {
//      return
//    }
//    guard let link = video.link else {
//      print("Invalid link")
//      return
//    }
//    let safariViewController = SFSafariViewController(url: link)
//    present(safariViewController, animated: true, completion: nil)
//  }
//}

// MARK: - Delegate
extension BanchanListViewController: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 343, height: 130)
    }
}

