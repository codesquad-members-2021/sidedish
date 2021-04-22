//
//  ViewController.swift
//  SideDishApp
//
//  Created by 오킹 on 2021/04/20.
//

import UIKit
import Toast_Swift
import Combine

class ViewController: UIViewController {

    @IBOutlet weak var dishCollectionView: UICollectionView!
    
    private let menuListViewModel = MenuListViewModel()
    private var subscriptions = Set<AnyCancellable>()
    var dataSource : UICollectionViewDiffableDataSource<Dishes,Dish>!
    let colorDictionary = ["이벤트특가" : UIColor.systemGreen, "런칭특가" : UIColor.systemBlue]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bind()
        menuListViewModel.requestDishes()
        dataSource = configureDataSource()
        
        sleep(3)
        
        var snapshot = NSDiffableDataSourceSnapshot<Dishes,Dish>()
        snapshot.appendSections([menuListViewModel.main[0]])
        snapshot.appendItems(menuListViewModel.main[0].dishes,
                             toSection: menuListViewModel.main[0])
//        for section in section.allCases {
//            snapshot.appendItems([testCard], toSection: section)
//        }
        
        let headerRegistration = UICollectionView.SupplementaryRegistration
        <UICollectionViewListCell>(elementKind: UICollectionView.elementKindSectionHeader) {
            [unowned self] (headerView, elementKind, indexPath) in
            
            // Obtain header item using index path
            let headerItem = self.dataSource.snapshot().sectionIdentifiers[indexPath.section]
            
            // Configure header view content based on headerItem
            var configuration = headerView.defaultContentConfiguration()
            configuration.text = headerItem.name
            
            // Customize header appearance to make it more eye-catching
            configuration.textProperties.font = .boldSystemFont(ofSize: 16)
            configuration.textProperties.color = .systemBlue
            
            let tap = CustomTapGestureRecognizer(target: self, action: #selector(handleTapGesture(recognizer:)), dishCount: headerItem.dishes.count)
            headerView.addGestureRecognizer(tap)
            
            // Apply the configuration to header view
            headerView.contentConfiguration = configuration
        }
        
        dataSource.supplementaryViewProvider = { [unowned self]
            (collectionView, elementKind, indexPath) -> UICollectionReusableView? in
            
            return self.dishCollectionView.dequeueConfiguredReusableSupplementary(
                using: headerRegistration, for: indexPath)
        }

        dataSource.apply(snapshot)
    }
    
    func bind() {
        menuListViewModel.$main
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { _ in
                //error
            }, receiveValue: { _ in
                print("메인 화면처리 해야함")
            })
            .store(in: &subscriptions)
        
        menuListViewModel.$soup
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { _ in
                //error
            }, receiveValue: { _ in
                print("수프 화면처리 해야함")
            })
            .store(in: &subscriptions)
        
        menuListViewModel.$side
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { _ in
                //error
            }, receiveValue: { _ in
                print("사이드 화면처리 해야함 ")
            })
            .store(in: &subscriptions)
    }
    
    func createImage(url: String) -> UIImage {
        guard let imageURL = URL(string: url),
              let imageData = try? Data(contentsOf: imageURL),
              let image = UIImage(data: imageData) else
        {
            return UIImage()
        }
        return image
    }
    
    func configureDataSource() -> UICollectionViewDiffableDataSource<Dishes,Dish> {
        let dataSource = UICollectionViewDiffableDataSource<Dishes,Dish> (collectionView: dishCollectionView, cellProvider: { collectionView, indexPath, dishData in
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DishCardCell.reuseIdentifier, for: indexPath) as? DishCardCell else {
                return UICollectionViewCell()
            }
        
            for subview in cell.eventStackView.arrangedSubviews{
                cell.eventStackView.removeArrangedSubview(subview)
            }
            
            DispatchQueue.main.async {
                cell.dishImage.image = self.createImage(url: dishData.image)
            }
            
            cell.title.text = "\(dishData.title)"
            cell.body.text = "\(dishData.description)"
            
            var badgeArray = dishData.badge.components(separatedBy: ",")
            
            for badgeText in badgeArray {
                let label = self.createEventLabel(text: badgeText)
                cell.eventStackView.addArrangedSubview(label)
            }
            
            if dishData.sellingPrice != "" {
                cell.charge.attributedText = (dishData.normalPrice + " " + dishData.sellingPrice).addStroke(target: dishData.normalPrice)
            } else {
                cell.charge.text = dishData.normalPrice
            }
            return cell
        })
        
        return dataSource
    }
    
    func createEventLabel(text : String) -> UILabel {

        var label : UILabel {
            let newLabel = UILabel()
            newLabel.text = "  \(text)  "
            newLabel.clipsToBounds = true
            newLabel.layer.cornerRadius = 5
            newLabel.backgroundColor = colorDictionary[text]
            newLabel.textColor = UIColor.white
            newLabel.font = UIFont.systemFont(ofSize: 12, weight: .bold)
            
            return newLabel
        }
        
        return label
    }
    
    @objc private func handleTapGesture(recognizer: CustomTapGestureRecognizer) {
        self.view.hideAllToasts()
        self.view.makeToast("상품 \(recognizer.dishCount)개 있어요!")
    }
}

class CustomTapGestureRecognizer: UITapGestureRecognizer {
    var dishCount : Int
    
    init(target: Any?, action: Selector?, dishCount: Int) {
        self.dishCount = dishCount
        super.init(target: target, action: action)
    }
}
