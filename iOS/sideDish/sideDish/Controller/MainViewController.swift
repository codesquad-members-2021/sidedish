import UIKit

class MainViewController: UIViewController {
    
    private var mainCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupMainCollectionView()
    }
}

//MARK: -Setup && Cofiguration
extension MainViewController {
    
    private func setupMainCollectionView() {
        mainCollectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewLayout.init())
        view.addSubview(mainCollectionView)
        configureMainCollectionView()
        mainCollectionView.dataSource = self
        mainCollectionView.delegate = self
        mainCollectionView.register(FoodCell.self, forCellWithReuseIdentifier: CellIdentifier.foodCell)
    }
    
    private func configureMainCollectionView() {
        mainCollectionView.backgroundColor = UIColor.clear
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        mainCollectionView.setCollectionViewLayout(layout, animated: false)
        mainCollectionView.translatesAutoresizingMaskIntoConstraints = false
        mainCollectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        mainCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        mainCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        mainCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
    }
}

//MARK: -CollectionView DataSource && Delegate
extension MainViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    //Cell Count for Each Section
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5 // test code
    }
    
    //Cell Information
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CellIdentifier.foodCell, for: indexPath) as! FoodCell
        //Start TestCode
        cell.foodImageView.image = UIImage(named: "side")
        cell.foodInfoStackView.foodNameLabel.text = "[마샐미디쉬] 매콤마늘쫑 해산물볶음 180G"
        cell.foodInfoStackView.foodDescriptionLabel.text = "탱글탱글한 새우와 오징어를 .."
        cell.foodInfoStackView.sellPriceLabel.text = "6,210원"
        //End TestCode
        return cell
    }
    
    //Cell Size
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 343, height: 130)
    }
    
    //Cell Edge Insets
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 15, bottom: 30, right: 15)
    }
    
    //Number of Sections
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 3
    }
}
