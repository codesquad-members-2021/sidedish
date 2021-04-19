//
//  HeaderViewModel.swift
//  Sidedish
//
//  Created by Issac on 2021/04/19.
//

import Foundation

class HeaderViewModel {
    var titles: [String]
    var countDescriptionTemplate: String
    
    init() {
        self.titles = [
            "메인반찬 / 한그릇 뚝딱 메인 요리",
            "국.찌개 / 김이 모락모락 국.찌개",
            "밑반찬 / 언제 먹어도 든든한 밑반찬"
        ]
        self.countDescriptionTemplate = "개 상품이 등록되어 있습니다."
    }
}
