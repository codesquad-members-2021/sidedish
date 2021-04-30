
import UIKit

class MenuHeaderView: UICollectionReusableView {

    @IBOutlet weak var headerLabel: UILabel!

    func configureLabelName(text: String) {
        self.headerLabel.text = text
    }

}
