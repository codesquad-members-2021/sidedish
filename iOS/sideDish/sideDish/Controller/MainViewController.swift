import UIKit

class MainViewController: UIViewController {
    
    private lazy var mainCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let view = UICollectionView(frame: .zero, collectionViewLayout: layout)
        view.dataSource = self
        view.delegate = self
        return view
    }()
    
    private var headerOfCollectionView: CollectionViewHeader!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupMainCollectionView()
    }
}

//MARK: -Setup && Cofiguration
private extension MainViewController {
    
    private func setupMainCollectionView() {
        
        view.addSubview(mainCollectionView)
        configureMainCollectionView()
//        mainCollectionView.dataSource = self
//        mainCollectionView.delegate = self
        mainCollectionView.register(FoodCell.self, forCellWithReuseIdentifier: CellIdentifier.foodCell)
        mainCollectionView.register(CollectionViewHeader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: CellIdentifier.foodHeader)
        setupHeaderView()
    }
    
    private func configureMainCollectionView() {
        mainCollectionView.backgroundColor = UIColor.clear
        
//        layout.scrollDirection = .vertical
//        mainCollectionView.setCollectionViewLayout(layout, animated: false)
        mainCollectionView.translatesAutoresizingMaskIntoConstraints = false
        mainCollectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        mainCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        mainCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        mainCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    }
    
    private func setupHeaderView() {
        headerOfCollectionView = CollectionViewHeader(frame: .zero)
        headerOfCollectionView.backgroundColor = UIColor.green
        mainCollectionView.addSubview(headerOfCollectionView)
    }
}

//MARK: -CollectionView DataSource && Delegate
extension MainViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5 // test code
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CellIdentifier.foodCell, for: indexPath) as? FoodCell else { return UICollectionViewCell() }
        //Start TestCode
        let attributedText = PriceStackView.convertToNSAttributedString(from: "7,880원")
        cell.foodImageView.image = UIImage(named: "side")
        cell.foodInfoStackView.foodNameLabel.text = "[마샐미디쉬] 매콤마늘쫑 해산물볶음 180G"
        cell.foodInfoStackView.foodDescriptionLabel.text = "탱글탱글한 새우와 오징어를 .."
        cell.foodInfoStackView.priceStackView.normalPriceLabel.text = "6,210원"
        cell.foodInfoStackView.priceStackView.eventPriceLabel?.attributedText = attributedText
        cell.foodInfoStackView.eventStackView.eventPriceLabel?.text = "이벤트 특가"
        cell.foodInfoStackView.eventStackView.launchingPriceLabel?.text = "런칭특가"
        //End TestCode
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 343, height: 130)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 15, bottom: 30, right: 15)
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        var header:CollectionViewHeader?
        
        if kind == UICollectionView.elementKindSectionHeader
        {
            header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: CellIdentifier.foodHeader, for: indexPath) as? CollectionViewHeader
            
            if indexPath.section == 0
            {
                header?.headerLabel.text = HeaderInfo.main
            }
            else if indexPath.section == 1
            {
                header?.headerLabel.text = HeaderInfo.soup
            }
            else
            {
                header?.headerLabel.text = HeaderInfo.side
            }
        }
        return header!
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: 343, height: 50)
    }
}
