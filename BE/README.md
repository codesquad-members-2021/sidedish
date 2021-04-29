# banchan-code API 설계

## 메인페이지

- /banchan-code/main
- GET

 ```json=
{
    "title": "main",
    "dishes": [
        {
            "hash": "HBDEF",
            "name": "[미노리키친] 규동 250g",
            "description": "일본인의 소울푸드! 한국인도 좋아하는 소고기덮밥",
            "top_image": "http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg",
            "prices": [6500, 5200],
            "badges": ["이벤트특가"]
        },
        {
            "hash": "H82A2",
            "name": "[빅마마의밥친구] 아삭 고소한 연근고기조림 250g",
            "description": "아이반찬과 다이어트 반찬으로 일석이조",
            "top_image": "https://user-images.githubusercontent.com/74045466/115366281-25095380-a200-11eb-9a9d-58e3d593b157.png",
            "prices": [5500],
            "badges": []
        }
    ]
}
```

- /banchan-code/soup
- GET
```json=
{
    "title": "soup",
    "dishes": [
        {
            "hash": "H72C3",
            "name": "[수하동] 특곰탕 850g" ,
            "description": ,
            "top_image": "http://public.codesquad.kr/jk/storeapp/data/d1fccf125f0a78113d0e06cb888f2e74.jpg",
            "prices": [15000, 14200],
            "badges": ["이벤트특가", "런칭특가"]
        },
        {
            "hash": "HA6EE",
            "name": "[빅마마의밥친구] 된장찌개 900g",
            "description": "항아리에서 숙성시킨 집된장으로만 맛을내 짜지 않은 된장찌개",
            "top_image": "http://public.codesquad.kr/jk/storeapp/data/d1fccf125f0a78113d0e06cb888f2e74.jpg",
            "prices": [10000],
            "badges": []
        }
    ]
}
```

- /banchan-code/side
- GET
 ```json=
{
    "title": "side",
    "dishes": [
        {
            "hash": "H1939",
            "name": "[동네부엌] 쇠고기야채장조림 200g",
            "description": "부드러운 고기부터 밥비벼먹기 딱좋은 국물까지", 
            "top_image": "http://public.codesquad.kr/jk/storeapp/data/e5646e5fc09a01a9243979b229e0572b.jpg",
            "prices": [7400],
            "badges": []
        }
    ]
}
```

## 상세페이지
- banchan-code/main/{hash}
- banchan-code/soup/{hash}
- banchan-code/side/{hash}
- GET
```json=
{
    "hash": "HBDEF",
    "name": "[미노리키친] 규동 250g",
    "top_image": "http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg",
    "description": "일본인의 소울푸드! 한국인도 좋아하는 소고기덮밥",
    "prices": [6500, 5200],
    "badges": ["이벤트특가"],
    "stock": 5,
    "point": 52,
    "delivery_info": "서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.",
    "thumb_images": [
        "http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg",
        "http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg",
        "http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg",
        "http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg"
        ],
    "detail_images": [
        "http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg",
        "http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg",
        "http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg",
        "http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg",
        "http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg",
        "http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg",
        "http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg",
        "http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg",
        "http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg",
        "http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/c0dd6887c9d9368604fc70d7fc3c4598.jpg"
        ]
}
```

