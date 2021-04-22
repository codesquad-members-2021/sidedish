//
//  MockData.swift
//  BanchanCode
//
//  Created by Song on 2021/04/22.
//

import Foundation

struct MockData {
    static let mainJSON = """
    {
       "title": "main",
       "dishes": [
           {
               "id": 1,
               "name": "[미노리키친] 규동 250g",
               "description": "일본인의 소울푸드! 한국인도 좋아하는 소고기덮밥",
               "top_image": "http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg",
               "prices": [6500, 5200],
               "badges": ["이벤트특가"]
           },
           {
               "id": 2,
               "name": "[빅마마의밥친구] 아삭 고소한 연근고기조림 250g",
               "description": "아이반찬과 다이어트 반찬으로 일석이조",
               "top_image": "https://user-images.githubusercontent.com/74045466/115366281-25095380-a200-11eb-9a9d-58e3d593b157.png",
               "prices": [5500],
               "badges": []
           }
       ]
    }
    """.data(using: .utf8)!
    
    static let soupJSON = """
    {
        "title": "soup",
        "dishes": [
            {
                "id": 3,
                "name": "[수하동] 특곰탕 850g" ,
                "description": "description": "100% 한우양지로 끓여낸 70년전통의 서울식곰탕",
                "top_image": "http://public.codesquad.kr/jk/storeapp/data/d1fccf125f0a78113d0e06cb888f2e74.jpg",
                "prices": [15000, 14200],
                "badges": ["이벤트특가", "런칭특가"]
            },
            {
                "id": 4,
                "name": "[빅마마의밥친구] 된장찌개 900g",
                "description": "항아리에서 숙성시킨 집된장으로만 맛을내 짜지 않은 된장찌개",
                "top_image": "http://public.codesquad.kr/jk/storeapp/data/d1fccf125f0a78113d0e06cb888f2e74.jpg",
                "prices": [10000],
                "badges": []
            }
        ]
    }
    """.data(using: .utf8)!
    
    static let sideJSON = """
    {
       "title": "side",
       "dishes": [
           {
               "id": 5,
               "name": "[동네부엌] 쇠고기야채장조림 200g",
               "description": "부드러운 고기부터 밥비벼먹기 딱좋은 국물까지",
               "top_image": "http://public.codesquad.kr/jk/storeapp/data/e5646e5fc09a01a9243979b229e0572b.jpg",
               "prices": [7400],
               "badges": []
           }
       ]
    }
    """.data(using: .utf8)!
}
