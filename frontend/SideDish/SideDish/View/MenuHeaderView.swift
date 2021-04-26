
import UIKit

class MenuHeaderView: UICollectionReusableView {

    @IBOutlet private weak var headerButton: UIButton!
    
    func configureButtonName(text: String) {
        self.headerButton.setTitle(text, for: .normal)
    }
    
    @IBAction private func buttonPressed(_ sender: UIButton) {
        // 토스터 설정하기
    }
}
