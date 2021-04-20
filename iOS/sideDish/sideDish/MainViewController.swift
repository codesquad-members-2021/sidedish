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
