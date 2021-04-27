//
//  String-extension.swift
//  Side-dish
//
//  Created by HOONHA CHOI on 2021/04/27.
//

import Foundation

extension String {
    func formatStringNumber() -> String {
        guard let regex = try? NSRegularExpression(pattern: "[0-9]+", options: .caseInsensitive) else { return "" }
        let result = regex.matches(in: self, range: _NSRange(location: 0, length: self.count))
        return result.map {
            String(self[Range($0.range, in: self)!])
        }.joined()
    }
}
