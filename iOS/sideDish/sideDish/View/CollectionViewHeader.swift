import UIKit

class CollectionViewHeader: UICollectionReusableView {
    
    var headerLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureHeaderLabel()
        setupTapGesture()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configureHeaderLabel()
        setupTapGesture()
    }
    
    private func configureHeaderLabel() {
        headerLabel = UILabel(frame: .zero)
        headerLabel.font = UIFont.boldSystemFont(ofSize: 22)
        addSubview(headerLabel)
        headerLabel.translatesAutoresizingMaskIntoConstraints = false
        headerLabel.widthAnchor.constraint(equalToConstant: 343).isActive = true
        headerLabel.heightAnchor.constraint(equalToConstant: 32).isActive = true
        headerLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        headerLabel.topAnchor.constraint(equalTo: topAnchor, constant: 5).isActive = true
    }
    
    private func setupTapGesture() {
        let gesture = UITapGestureRecognizer(target: self, action: #selector(didTapSectionHeader(_:)))
        addGestureRecognizer(gesture)
    }
    
    @objc private func didTapSectionHeader(_ gesture: UITapGestureRecognizer) {
       print("요구사항은 Toaster쓰는게 아닌거 같은데...흠")
    }
}
