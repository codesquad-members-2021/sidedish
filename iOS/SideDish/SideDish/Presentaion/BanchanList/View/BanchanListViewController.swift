//
//  ViewController.swift
//  SideDish
//
//  Created by 심영민 on 2021/04/20.
//

import UIKit
import Combine

class BanchanListViewController: UIViewController {
    
    @IBOutlet weak var banchanCollectionView: BanchanCollectionView!
    
    private var viewModel = BanchanListViewModel()
    private lazy var dataSource = configureDataSource()
    private var subscriptions = Set<AnyCancellable>()
    
    typealias DataSource = UICollectionViewDiffableDataSource<Section, Banchan>
    typealias Snapshot = NSDiffableDataSourceSnapshot<Section, Banchan>
    typealias Section = BanchanListViewModel.Section
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        applySnapshot(animatingDifferences: false)
        banchanCollectionView.dataSource = self.dataSource
        banchanCollectionView.delegate = self
        bind()
    }
    
    private func bind() {
        viewModel.$menu
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { (result) in
                switch result {
                case .failure(let error):
                    print(error)
                case .finished:
                    break
                }
            }, receiveValue: { [unowned self] _ in
                self.applySnapshot()
            })
            .store(in: &subscriptions)
    }
}

// MARK: - DataSource
extension BanchanListViewController {
    func configureDataSource() -> DataSource {
        let dataSource = DataSource(collectionView: banchanCollectionView) { (collectionView, indexPath, banchan) -> UICollectionViewCell? in
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: BanchanCustomCell.identifer, for: indexPath) as? BanchanCustomCell else { return nil }
            
            cell.banchan = banchan
            return cell
        }
        
        dataSource.supplementaryViewProvider = { (collectionView, kind, indexPath) in
            guard kind == UICollectionView.elementKindSectionHeader else { return nil }
            
            let section = self.dataSource.snapshot().sectionIdentifiers[indexPath.section]
    
            guard let view = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: BanchanCustomCellHeader.identifier, for: indexPath) as? BanchanCustomCellHeader else { return nil }
            
            view.configure(title: section.rawValue, count: self.viewModel.count(section: section))
            return view
            
        }
        return dataSource
    }
    
    func applySnapshot(animatingDifferences: Bool = true) {
        var snapshot = Snapshot()
        
        snapshot.appendSections(Section.allCases)
        
        Section.allCases.forEach { section in
            guard let banchans = viewModel.getBanchans(section: section) else { return }
            snapshot.appendItems(banchans, toSection: section)
        }
        
        dataSource.apply(snapshot, animatingDifferences: animatingDifferences)
    }
}

// MARK: - Delegate
extension BanchanListViewController: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellSize = CGSize(width: 343, height: 130)
        return cellSize
    }
}

