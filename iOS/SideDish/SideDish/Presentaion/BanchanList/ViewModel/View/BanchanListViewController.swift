//
//  ViewController.swift
//  SideDish
//
//  Created by 심영민 on 2021/04/20.
//

import UIKit

class BanchanListViewController: UIViewController {
    
    @IBOutlet weak var banchanCollectionView: BanchanCollectionView!
    
    //var viewModel = BanchanListViewModel()
    private var sections = Section.allSections
    lazy var dataSource = configureDataSource()
    
    typealias DataSource = UICollectionViewDiffableDataSource<Section, Banchan>
    typealias Snapshot = NSDiffableDataSourceSnapshot<Section, Banchan>
    
    override func viewDidLoad() {
        super.viewDidLoad()

        applySnapshot(animatingDifferences: false)
        banchanCollectionView.dataSource = self.dataSource
        banchanCollectionView.delegate = self
    }
}

// MARK: - DataSource
extension BanchanListViewController {
    func configureDataSource() -> DataSource {
        let dataSource = DataSource(collectionView: banchanCollectionView) { (collectionView, indexPath, banchan) -> UICollectionViewCell? in
                guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: BanchanCustomCell.identifer, for: indexPath) as? BanchanCustomCell else {
                    return nil
                }
                cell.banchan = banchan
                return cell
        }
       
        dataSource.supplementaryViewProvider = { (collectionView, kind, indexPath) in
            guard kind == UICollectionView.elementKindSectionHeader else {
                return nil
            }
            
            guard let view = collectionView.dequeueReusableSupplementaryView(
                    ofKind: kind,
                    withReuseIdentifier: BanchanCustomCellHeader.identifier,
                    for: indexPath) as? BanchanCustomCellHeader else {
                return nil
            }
            let section = self.dataSource.snapshot().sectionIdentifiers[indexPath.section]
            view.titleLabel.text = section.title.rawValue
            return view
            
        }
        return dataSource
    }
    
    func applySnapshot(animatingDifferences: Bool = true) {
        var snapshot = Snapshot()
       
        snapshot.appendSections(sections)
        
        sections.forEach { section in
            snapshot.appendItems(section.banchans, toSection: section)
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

