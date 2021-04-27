use sidedish;

DROP TABLE IF EXISTS item;
DROP TABLE IF EXISTS category;

show tables;

CREATE TABLE IF NOT EXISTS `sidedish`.`category` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(45) NOT NULL,
    `best` TINYINT(1)
);

-- 테이블 생성은 init.sql 실행부탁드려유
CREATE TABLE IF NOT EXISTS `sidedish`.`item` (
                                                 `id` INT NOT NULL AUTO_INCREMENT,
                                                 `title` VARCHAR(45) NOT NULL,
                                                 `description` VARCHAR(200) NOT NULL,
                                                 `normal_price` INT NOT NULL,
                                                 `sale_price` INT NOT NULL,
                                                 `badges` VARCHAR(45) NULL,
                                                 `delivery_types` VARCHAR(200) NULL,
                                                 `images` VARCHAR(2000) NULL,
                                                 `category_name` VARCHAR(45),
                                                 `category` INT REFERENCES category(`id`),
                                                 PRIMARY KEY (`id`))
                                                ENGINE = InnoDB;

ALTER TABLE item CONVERT TO character SET utf8;
ALTER TABLE category CONVERT TO character SET utf8;

INSERT INTO category(name, best) values
                                           ('MAIN', FALSE),
                                           ('SOUP', FALSE),
                                           ('SIDE', FALSE),
                                           ('할인특가 세트상품', TRUE),
                                           ('풍성한 고기반찬', TRUE),
                                           ('편리한 반찬세트', TRUE);

-- 샘플 데이터베이스 뱃지랑 딜리버리타입 없는
INSERT INTO item(title, description, normal_price, sale_price, category_name, category) values
('베트남 곱창 쌀국수','베트남의 그맛과 감동을 그대로 쌀국수',4000,3300,'할인특가 세트상품', 4),
('할머니의 멸치국수','할머니의 손맛 멸치국수',2000,1900,'할인특가 세트상품', 4),
('왕큰만두','왕크니까 왕맛있는 왕큰만두',10000,9300,'풍성한 고기반찬', 5),
('서해간장개장','서해의 크고 알흠다운 꽃게들로 가득찬 간장게장',40000,39300,'편리한 반찬세트', 6),
('윤식당의 불고기반찬','밥반찬에도 술안주에도 잘어울리는',7000,6300,'MAIN', 1),
('쿠퍼한테물어서알아낸순대국맛집','선릉역맛집농민백암순대',9000,9000,'MAIN', 1),
('골뱅이무침','소중한식사 골뱅이무침195g',27000,24300,'MAIN', 1),
('스미스가좋아하는한옥','버섯리조또',39900,39900,'MAIN', 1),

('전복전복죽','전복죽 너무 사랑해 늘 새로워 짜릿해',10000,9300,'SOUP', 2),
('유기농 친환경 당근쥬스','건강을 위해서 참고 먹어요 친환경 당근주스',20000,19300,'SOUP', 2),
('한국인의 김치','김치는 한국인들을 위한 필수요소',8800,7000,'SOUP', 2),
('견과류선물셋트','선물은 역시나 편한 견과류가 최고야',20000,19300,'SOUP', 2),

('곰곰 우유식짱',' ',10000,1900,'SIDE', 3),
('추억과 공포의 옜날꿀호떡',' ',10000,8800,'SIDE', 3),
('생크림 카스테라',' ',40000,29300,'SIDE', 3),
('오븐에 구운 도나쓰',' ',70000,63500,'SIDE', 3),
('햄버거',' ',5500,5000,'SIDE', 3);

SELECT * from item;
select * from category;

INSERT INTO item(title, description, normal_price, sale_price,badges,delivery_types,images, category) values

('[아내가쉐프했다]풍성한 고기반찬 찜닭요리','아내의쉐프가 자신 있게 만들어서 이름도 아쉐찜닭',10900,9900,'EVENT, LAUNCHING','DOMESTIC_POST, NEXT_DAY'
,'https://cdn.bmf.kr/_data/product/H206E/325c7aeb1673ffe58052463d93e407b8.jpg'
,4),

('[사계절]편리한 반찬세트 - 사계절 건강식당 작은상','마포엄마들이 사랑해온 건강반찬 사계절 건강식',23500,19900,'EVENT, LAUNCHING','DOMESTIC_POST, NEXT_DAY'
,'https://cdn.bmf.kr/_data/product/201410/13/b8b0a0aba3386f030155b6cb0c1c75fa.jpg'
,4),

('[옹가솜씨] 소고기쩜짜장 280g','옹가솜씨 한국인의 쏘울푸드 쩜짜장 짱맛있다!',20000,14900,'EVENT, LAUNCHING','DOMESTIC_POST, NEXT_DAY'
,'https://cdn.bmf.kr/_data/product/H05FB/6ff744c6f36ba437a4f8b9e9a000b0b1.jpg'
,5),

('미노리키친] 규동 250g','전세계인의 소울프도 한국인들도 좋아하는 소고기덮밥',98000,76600,'EVENT, LAUNCHING','DOMESTIC_POST, NEXT_DAY'
,'https://cdn.bmf.kr/_data/product/HBDEF/289b0fb6c14d2c8cd161205f8dadfa7a.jpg'
,6),

('[신논현 맛집]돼지국밥맛집','종가집 1000년전통 돼지고기로 만든 순대!!',10000,9000,'EVENT, LAUNCHING','DOMESTIC_POST'
,'http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg'
,1),

('[미노리키친] 규동 250g','일본인의 소울푸드! 한국인도 좋아하는 소고기덮밥',6500,7000,'EVENT','DOMESTIC_POST, NEXT_DAY'
,'http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg, http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/c0dd6887c9d9368604fc70d7fc3c4598.jpg'
,1),

('[마샐미디쉬] 매콤마늘쫑 해산물볶음 180g','탱글탱글한 새우와 오징어를 마늘쫑과 함께 매콤하게 볶아냈어요.',38000,27000,'EVENT, LAUNCHING','DOMESTIC_POST, NEXT_DAY'
,'http://public.codesquad.kr/jk/storeapp/data/2455226945d52f5aefd51f35d663bb16.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/2d408898494ac950d7d2cfd6c36d59c2.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/62c8bb77facfc9c3be81f9bf45b27f2a.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/f6d73afc0ebc1efa71eaea32e9d846f2.jpg'
,1),

('[빅마마의밥친구] 아삭 고소한 연근고기조림 250g','편식하는 아이도 좋아하는 건강연근조림',5500,5500,'EVENT, LAUNCHING','DOMESTIC_POST, NEXT_DAY'
,'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/5f73c5c80b62ef63c8a8eecefe32fc29.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0253cdebc4972fefd6b94458024fe765.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/3299da0677b50c8c519adc0335271c49.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0642265b65dcc2490ab164ff428cbfe2.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/695683493c1ae475a175475f50d3259f.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/c8f9bed4f5c07585b869e3d171904a93.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d2e3274c95c832bc9bfbcebbd548f61b.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d9e4fa00652483d74b46317d38159a2f.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d7799b67683128642453f9e2b4c8ce84.jpg'
,3),

('[미노리키친] 일본식 우엉조림(킨피라고보) 80g','한국식 우엉조림과는 다른 진한 감칠맛',3300,3500,'EVENT, LAUNCHING','DOMESTIC_POST, NEXT_DAY'
,'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/670e7deefe1d84a4f4e058655fbd4d7c.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/H602F/1898cda038e92454395b8ffca8cd4393.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/H602F/49516d302dad870fbdd75cf98a01eae4.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/H602F/c1bb6fe4f72fcea27ea989ae48c61c86.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/H602F/49afed8d3ec417b39ce8de456fc6661c.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/H602F/e62762e63f3e12dc2857a065badf1eea.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/H602F/31103ab946bff52b709ec6891e768c05.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/H602F/f84dc16f4f6d97661bd13d587a72d6b1.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/H602F/fd3f49614f731a0610a5409c0deb3c60.jpg'
,3),

('[마더앤찬] 명란치즈계란말이 230g','아이반찬으로 최고 계란말이',3780,3779,'EVENT, LAUNCHING','DOMESTIC_POST, NEXT_DAY'
,'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/341b8605fa224ec1808c4f169097d170.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/0228d4cb660a3cca06952917bd024dcb.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/e027227f61a93b6473e8c4bbd5c3de74.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/03ac0b09199421bb61727c667c2361f6.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/cbe4a3e12b7bdba5cf410e0e19dcf1ca.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/b58fa5791b67db106524b48442cb1c6a.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/82cfe0332f0e1c927a23b79f1d152430.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/390ca9ad5a574cbe7f3f6e26871f6690.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/e113889a6120357c8e6196802a9f155b.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/967e8e1ef357e9722b796e2bcb09ba3d.jpg'
,3),

('[모이세] 육개장 1팩(600g)','제주3대해장국 맛집의 인기메뉴',5900,4400,'LAUNCHING','DOMESTIC_POST, NEXT_DAY'
,'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/3d67aabd2751620367e1d1ac3e3d7ef2.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/855b42b4e80162e6930f06aa80bd1272.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/1966de56cf138639d5d50d4bf2db8e72.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b3dd54082745d1188f3a6e582e7cd993.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/4a6fd1fd1116c14aa6aef5e6851ab6a9.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/7e12275d669102d0269278a7c91ab49d.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/ab34ea3755f59a21662266eb62b7bc4b.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b0a70ff59a3b5360b6246b507693c4d4.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/dc772923b4a2e053f1baf68fa28a48ee.jpg'
,2),

('[수하동] 특곰탕 850g]','100% 한우양지로 끓여낸 70년전통의 서울식곰탕',19900,18000,'EVENT, LAUNCHING','DOMESTIC_POST, NEXT_DAY'
,'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/341b8605fa224ec1808c4f169097d170.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/0228d4cb660a3cca06952917bd024dcb.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/e027227f61a93b6473e8c4bbd5c3de74.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/03ac0b09199421bb61727c667c2361f6.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/cbe4a3e12b7bdba5cf410e0e19dcf1ca.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/b58fa5791b67db106524b48442cb1c6a.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/82cfe0332f0e1c927a23b79f1d152430.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/390ca9ad5a574cbe7f3f6e26871f6690.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/e113889a6120357c8e6196802a9f155b.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/967e8e1ef357e9722b796e2bcb09ba3d.jpg'
,2),

('[빅마마의밥친구] 된장찌개 900g','항아리에서 숙성시킨 집된장으로만 맛을내 짜지 않은 된장찌개',10000,8500,'EVENT, LAUNCHING','DOMESTIC_POST, NEXT_DAY'
,'http://public.codesquad.kr/jk/storeapp/data/c069bc32cb37727c59e1f0c2839311a0.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/H602F/edc6bae2e2663f05b4e8eb5a2b95d68f.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/H602F/c935f5913dc66b11ebceeef85485c438.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/H602F/7c1e24867611394f04b37d05593e21ba.jpg'
,2),

('[모이세] 육개장 1팩(600g)','제주3대해장국 맛집의 인기메뉴',5900,4400,'EVENT, LAUNCHING','DOMESTIC_POST, NEXT_DAY'
,'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/2ad963a9f63d371826748c852a0025c3.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/f945d8ac1dccc3f931bcaf35de5de582.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/bacb0b8186371bfafbd92dbeec718e13.jpg,http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b96b02e9a956c6d5ad1e10eb14ba81e0.jpg'
,2);

-- ('','','','','EVENT, LAUNCHING','DOMESTIC_POST, NEXT_DAY','','');

SELECT * from item;

-- ------------------------------
-- //@ Todo : 배송정보가
-- //@ Todo 데이터 추가, 및 원본데이터셋 출처
-- https://www.notion.so/e2b118a5f0ce44aa874240c922a52d14?v=3ba79bf90d0d41a48099f50dcf649869 여기(루카스 목업API 상세정보) 리소스 긁어다가 쓰면 될듯해여..
-- //@ Todo : 의논해볼 사항 : 이미지없음 대체이미지
-- //@ Todo : 이미지 구분자에 \n(개행문자) 들어가지않게 하려고하는데 뭔지모르겠어요 ㅠㅠ....
-- //@ Todo : 빰빰 의견 -> utf8 로 이모지 지원 안되니까, 이모지 지원되는 캐릭터셋으로 변경하도록 고려
