//
//  SidedishViewController.swift
//  sidedishApp
//
//  Created by zombietux on 2021/04/19.
//

import UIKit
import Combine

class SidedishViewController: UIViewController {
    enum Section: Int, CaseIterable {
        case main
        case soup
        case side
        
        var sectionHeader: String {
            switch self {
            case .main: return "모두가 좋아하는 든든한 메인요리"
            case .soup: return "정성이 담긴 뜨끈뜨끈 국물요리"
            case .side: return "식탁을 풍성하게 하는 정갈한 밑반찬"
            }
        }
    }
    
    enum DataItem: Hashable {
        case main(Item)
        case soup(Item)
        case side(Item)
    }
    
    enum SupplementaryElementKind {
        static let sectionHeader = "supplementary-section-header"
    }
    
    private var cancellables: Set<AnyCancellable> = []
    private var sidedishViewModel: SidedishViewModelType!
    private var collectionView: UICollectionView!
    private var dataSource: UICollectionViewDiffableDataSource<Section, DataItem>!

    override func viewDidLoad() {
        super.viewDidLoad()
        sidedishViewModel = SidedishViewModel()
        configureCollectionView()
        fetchData()
    }
    
    private func configureCollectionView() {
        let layout = LayoutManager().createLayout()
        
        self.collectionView = UICollectionView(frame: self.view.bounds, collectionViewLayout: layout)
        self.view.addSubview(self.collectionView)
        self.collectionView.backgroundColor = .systemBackground
        self.collectionView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        let mainCellRegistration = UICollectionView.CellRegistration<SidedishCell, DataItem> { cell, indexPath, item in
            if case .main(let item) = item {
                cell.configureCell(item: item)
            }
        }
        
        let soupCellRegistration = UICollectionView.CellRegistration<SidedishCell, DataItem> { cell, indexPath, item in
            if case .soup(let item) = item {
                cell.configureCell(item: item)
            }
        }
        
        let sideCellRegistration = UICollectionView.CellRegistration<SidedishCell, DataItem> { cell, indexPath, item in
            if case .side(let item) = item {
                cell.configureCell(item: item)
            }
        }
        
        self.dataSource = UICollectionViewDiffableDataSource(collectionView: self.collectionView, cellProvider: { (collectionView, indexPath, model) -> UICollectionViewCell? in
            guard let sectionKind = Section(rawValue: indexPath.section) else { return UICollectionViewCell() }
            
            switch sectionKind {
            case .main:
                return collectionView.dequeueConfiguredReusableCell(using: mainCellRegistration, for: indexPath, item: model)
            case .soup:
                return collectionView.dequeueConfiguredReusableCell(using: soupCellRegistration, for: indexPath, item: model)
            case .side:
                return collectionView.dequeueConfiguredReusableCell(using: sideCellRegistration, for: indexPath, item: model)
            }
        })
        
        let sectionHeaderRegistration = UICollectionView.SupplementaryRegistration<SectionHeader>(elementKind: SupplementaryElementKind.sectionHeader) { header, kind, indexPath in
            guard let sectionKind = Section(rawValue: indexPath.section) else { return }
        
            header.label.text = sectionKind.sectionHeader
        }
        
        self.dataSource.supplementaryViewProvider = { collectionView, kind, indexPath in
            switch kind {
            case SupplementaryElementKind.sectionHeader:
                return collectionView.dequeueConfiguredReusableSupplementary(using: sectionHeaderRegistration, for: indexPath)
            default:
                return nil
            }
        }
    }
    
    private func fetchData() {
        self.sidedishViewModel.dataChanged
            .receive(on: DispatchQueue.main)
            .sink { [weak self] _ in
                self?.updateSnapshot()
            }
            .store(in: &cancellables)
        
        self.sidedishViewModel.fetchData()
    }
    
    private func updateSnapshot() {
        var snapshot = NSDiffableDataSourceSnapshot<Section, DataItem>()
        snapshot.appendSections(Section.allCases)
        
        snapshot.appendItems(sidedishViewModel.getMainItems().map { DataItem.main($0) }, toSection: .main)
        snapshot.appendItems(sidedishViewModel.getSoupItems().map { DataItem.soup($0) }, toSection: .soup)
        snapshot.appendItems(sidedishViewModel.getSideItems().map { DataItem.side($0) }, toSection: .side)
        
        self.dataSource.apply(snapshot)
    }
}

