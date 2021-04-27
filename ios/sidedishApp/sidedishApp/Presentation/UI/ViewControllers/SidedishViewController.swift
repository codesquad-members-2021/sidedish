//
//  SidedishViewController.swift
//  sidedishApp
//
//  Created by zombietux on 2021/04/19.
//

import UIKit
import Combine

class SidedishViewController: UIViewController {
    typealias FetchDataHandler = (String) -> ()
    
    private var cancellables: Set<AnyCancellable> = []
    private var sidedishViewModel: SidedishViewModelType!
    private var collectionView: UICollectionView!
    private var dataSource: UICollectionViewDiffableDataSource<Section, Item>!
    private let mainPath = "main"
    private let soupPath = "soup"
    private let sidePath = "side"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sidedishViewModel = SidedishViewModel()
        configureCollectionView()
        congigureFetchData()
    }
    
    private func congigureFetchData() {
        self.fetchMainData(path: self.mainPath)
        self.fetchSoupData(path: self.soupPath)
        self.fetchSideData(path: self.sidePath)
    }
    
    private func configureCollectionView() {
        let layout = LayoutManager().createLayout()
        
        self.collectionView = UICollectionView(frame: self.view.bounds, collectionViewLayout: layout)
        self.view.addSubview(self.collectionView)
        self.collectionView.backgroundColor = .systemBackground
        self.collectionView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        let mainCellRegistration = UICollectionView.CellRegistration<SidedishCell, Item> { cell, indexPath, item in
            cell.configureCell(item: item)
        }
        
        let soupCellRegistration = UICollectionView.CellRegistration<SidedishCell, Item> { cell, indexPath, item in
            cell.configureCell(item: item)
        }
        
        let sideCellRegistration = UICollectionView.CellRegistration<SidedishCell, Item> { cell, indexPath, item in
            cell.configureCell(item: item)
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
        
        let sectionHeaderRegistration = UICollectionView.SupplementaryRegistration<SectionHeader>(elementKind: LayoutManager.SupplementaryElementKind.sectionHeader) { header, kind, indexPath in
            guard let sectionKind = Section(rawValue: indexPath.section) else { return }
        
            header.label.text = sectionKind.sectionHeader
        }
        
        self.dataSource.supplementaryViewProvider = { collectionView, kind, indexPath in
            switch kind {
            case LayoutManager.SupplementaryElementKind.sectionHeader:
                return collectionView.dequeueConfiguredReusableSupplementary(using: sectionHeaderRegistration, for: indexPath)
            default:
                return nil
            }
        }
    }
    
    private func fetchMainData(path: String) {
        self.fetchData(handler: self.sidedishViewModel.fetchMainData, path: path)
    }
    
    private func fetchSoupData(path: String) {
        self.fetchData(handler: self.sidedishViewModel.fetchSoupData, path: path)
    }

    private func fetchSideData(path: String) {
        self.fetchData(handler: self.sidedishViewModel.fetchSideData, path: path)
    }
    
    private func fetchData(handler: FetchDataHandler, path: String) {
        self.sidedishViewModel.dataChanged
            .receive(on: DispatchQueue.main)
            .sink { [weak self] _ in
                self?.updateSnapshot()
            }
            .store(in: &cancellables)
        
        handler(path)
    }
    
    private func updateSnapshot() {
        var snapshot = NSDiffableDataSourceSnapshot<Section, Item>()
        snapshot.appendSections(Section.allCases)

        snapshot.appendItems(sidedishViewModel.getMainItems(), toSection: .main)
        snapshot.appendItems(sidedishViewModel.getSoupItems(), toSection: .soup)
        snapshot.appendItems(sidedishViewModel.getSideItems(), toSection: .side)
        self.dataSource.apply(snapshot)
    }
}
