
import Foundation

protocol FetchMenuUseCase {
    func loadMenu(of: DataTaskManager.Url ,closure: @escaping ([Menu], Int) -> (Void))
}

class FetchDataUseCase: FetchMenuUseCase {
    func loadMenu(of url: DataTaskManager.Url, closure: @escaping ([Menu], Int) -> (Void)) {
        DataTaskManager.sendRequest(url: url, completion: { (result) in
            switch result {
            case .success(let data):
                closure(data.items, data.categoryId)
            case.failure(let error):
                // 실패시 persistence 내에 있는 데이터 반환하기
                print(error.localizedDescription)
            }
        })
    }
}

