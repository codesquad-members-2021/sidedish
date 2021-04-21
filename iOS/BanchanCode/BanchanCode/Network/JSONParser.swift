//
//  JSONParser.swift
//  BanchanCode
//
//  Created by Song on 2021/04/21.
//

import Foundation

let jsonString = """
{
   "title": "main",
   "dishes":
       {
           "hash": "H82A2",
           "name": "[빅마마의밥친구] 아삭 고소한 연근고기조림 250g",
           "description": "아이반찬과 다이어트 반찬으로 일석이조",
           "top_image": "https://user-images.githubusercontent.com/74045466/115366281-25095380-a200-11eb-9a9d-58e3d593b157.png",
           "prices": [5500],
           "badges": []
       }
}
"""

class JSONPaser {
    func loadDishes() -> Dish? {
        do {
            guard let jsonData = jsonString.data(using: .utf8) else {
                return nil
            }
            let dish = try JSONDecoder().decode(Dish.self, from: jsonData)
            return dish
        } catch {
            print(error.localizedDescription)
            return nil
        }
    }
}
