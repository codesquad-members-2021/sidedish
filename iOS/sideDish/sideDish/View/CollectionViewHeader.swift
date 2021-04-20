import UIKit

class CollectionViewHeader: UICollectionReusableView {
    
    var headerLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureHeaderLabel()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configureHeaderLabel()
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
}
