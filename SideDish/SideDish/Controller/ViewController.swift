//
//  ViewController.swift
//  SideDish
//
//  Created by 양준혁 on 2021/04/19.
//

import UIKit
import Toaster
import Combine

class ViewController: UIViewController {
    
    // MARK: - Value Types
    typealias DataSource = UICollectionViewDiffableDataSource<Section, Card>
    typealias Snapshot = NSDiffableDataSourceSnapshot<Section, Card>
    
    // MARK: - Properties
    @IBOutlet weak var cardCollectionView: UICollectionView!
    
    private var cancellables: Set<AnyCancellable> = []
    private var sections = Section.allSections
    private lazy var dataSource = makeDataSource()
    
    // MARK: - Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        registerNIB()
        fetchData()
        makeSectionHeader()
    }
}
// MARK: - Functions
extension ViewController {
    func makeDataSource() -> DataSource {
        let dataSource = DataSource(
            collectionView: cardCollectionView,
            cellProvider: { ( collectionview, indexPath, card) -> UICollectionViewCell? in
                let cell = collectionview.dequeueReusableCell(withReuseIdentifier: "cardCell", for: indexPath) as? CardCell
                cell?.card = card
                return cell
            })
        return dataSource
    }
    func makeSectionHeader(){
        self.dataSource.supplementaryViewProvider = { collectionView, kind, indexPath in
            guard kind == UICollectionView.elementKindSectionHeader else {
                return nil
            }
            let section = self.dataSource.snapshot().sectionIdentifiers[indexPath.section]
            let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind,
                                                                       withReuseIdentifier: SectionHeaderReusableView.reuseIdentifier,
                                                                       for: indexPath) as? SectionHeaderReusableView
            headerView?.title.text = section.title
            return headerView
        }
    }
    func fetchData(){
        self.sections.forEach{
            $0.$cards.receive(on: DispatchQueue.main)
                .sink(receiveValue: {[weak self] _ in
                    self?.applySnapshot()
                })
                .store(in: &cancellables)
        }
        self.sections[0].loadCards(type: .main)
        self.sections[1].loadCards(type: .soup)
        self.sections[2].loadCards(type: .side)
    }
    func applySnapshot(animatingDifferences : Bool = true){
        var snapshot = Snapshot()
        snapshot.appendSections(sections)
        sections.forEach{ section in
            snapshot.appendItems(section.cards, toSection: section)
        }
        dataSource.apply(snapshot, animatingDifferences: animatingDifferences)
    }
    func registerNIB() {
        let nibName = UINib(nibName: "CardCell", bundle: nil)
        cardCollectionView.register(nibName, forCellWithReuseIdentifier: "cardCell")
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 343, height: 130)
    }
}
