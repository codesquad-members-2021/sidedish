USE SIDEDISH;

INSERT INTO CATEGORY(TITLE) VALUES("main");
INSERT INTO CATEGORY(TITLE) VALUES("soup");
INSERT INTO CATEGORY(TITLE) VALUES("side");

INSERT INTO DISH(NAME,TOP_IMAGE, DESCRIPTION,PRICES,
                 BADGES,STOCK,POINT, DELIVERY_INFO,THUMB_IMAGES,DETAIL_IMAGES,CATEGORY)
VALUES ("[미노리키친] 규동 250g", "http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg",
        "일본인의 소울푸드! 한국인도 좋아하는 소고기덮밥", "6500, 5200", "이벤트특가", 5, 65, "[월 · 화 · 수 · 목 · 금 · 토]",
        "http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg , http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg, http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg",
        "http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg, http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg, http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg",
        1);

