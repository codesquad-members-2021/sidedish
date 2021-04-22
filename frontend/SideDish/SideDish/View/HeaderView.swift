
import UIKit

class HeaderView: UICollectionReusableView {

    @IBOutlet weak var headerButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        configureButtonName(text: "")
    }
    
    func configureButtonName(text: String) {
        self.headerButton.setTitle(text, for: .normal)
    }
    @IBAction func buttonPressed(_ sender: Any) {
    }
}
