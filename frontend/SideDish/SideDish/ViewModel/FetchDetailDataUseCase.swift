
import Foundation

class FetchDetailDataUseCase {
    func loadDetailMenu(detailHash: String, closure: @escaping (DetailMenu) -> (Void)) {
        DataTaskManager.sendDetailRequest(detailHash: detailHash, completion: { (result) in
            switch result {
            case .success(let data):
                closure(data.data)
            case.failure(let error):
                // 실패시 persistence 내에 있는 데이터 반환하기
                print(error.localizedDescription)
            }
        })
    }
}
