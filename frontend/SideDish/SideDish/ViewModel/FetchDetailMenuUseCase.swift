
import Foundation

class FetchDetailMenuUseCase {
    
    func loadDetailMenu(url: URL?, closure: @escaping (DetailMenu) -> (Void)) {
        APIRequestManager.sendDetailRequest(url: url, completion: { (result) in
            switch result {
            case .success(let data):
                closure(data)
            case.failure(let error):
                // 실패시 persistence 내에 있는 데이터 반환하기
                print(error.localizedDescription)
            }
        })
    }
    
}

