//
//  ViewController.swift
//  SideDish
//
//  Created by 심영민 on 2021/04/20.
//

import UIKit
import Combine
import Toaster

class BanchanListViewController: UIViewController {
    
    @IBOutlet weak var banchanCollectionView: BanchanCollectionView!
    
    static let storyboardName = "Main"
    static let storyboardID = "BanchanListViewController"
    
    private var viewModel: BanchanListViewModel!
    private lazy var dataSource = configureDataSource()
    private var subscriptions = Set<AnyCancellable>()
    
    typealias DataSource = UICollectionViewDiffableDataSource<Section, Banchan>
    typealias Snapshot = NSDiffableDataSourceSnapshot<Section, Banchan>
    
    static func create(with viewModel: BanchanListViewModel) -> BanchanListViewController {
        let storyboard = UIStoryboard(name: storyboardName, bundle: Bundle.main)
        guard let vc = storyboard.instantiateViewController(identifier: storyboardID) as? BanchanListViewController else {
            return BanchanListViewController()
        }
        vc.viewModel = viewModel
        return vc
    }
    
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
    
    @objc func headerTouched(_ sender: CustomTapGestureRecognizer) {
        Toast(text: "\(sender.cellCount)개 상품이 등록되어 있습니다.").show()
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
            
            let tapRecognizer = CustomTapGestureRecognizer(target: self,
                                                           action: #selector(self.headerTouched(_:)),
                                                           cellCount: self.viewModel.count(section: section))
            view.addGestureRecognizer(tapRecognizer)
            
            view.configure(title: section.description())
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
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        viewModel.didSelectedItem(indexPath: indexPath)
    }
}

// MARK: - UITapGestureRecongnizer Custom Class
class CustomTapGestureRecognizer: UITapGestureRecognizer {
    private (set) var cellCount: Int
    
    init(target: Any?, action: Selector?, cellCount: Int) {
        self.cellCount = cellCount
        super.init(target: target, action: action)
    }
}

