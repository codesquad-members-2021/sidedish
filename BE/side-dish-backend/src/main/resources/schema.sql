

use sidedish;

DROP TABLE IF EXISTS item;

show tables;
DESC item;

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
                                                 `category` VARCHAR(45) NOT NULL,
                                                 PRIMARY KEY (`id`))
                                                ENGINE = InnoDB;



-- 샘플 데이터베이스 뱃지랑 딜리버리타입 없는
INSERT INTO item(title, description, normal_price, sale_price, category) values
('윤식당의 불고기반찬','밥반찬에도 술안주에도 잘어울리는',7000,6300,'MAIN'),
('쿠퍼한테물어서알아낸순대국맛집','선릉역맛집농민백암순대',9000,9000,'MAIN'),
('골뱅이무침','소중한식사 골뱅이무침195g',27000,24300,'MAIN'),
('스미스가좋아하는한옥','버섯리조또',39900,39900,'MAIN'),
('전복전복죽','전복죽 너무 사랑해 늘 새로워 짜릿해',20000,19300,'SOUP'),
('적',' ',20000,19300,'SOUP'),
('당',' ',20000,19300,'SOUP'),
('한',' ',20000,19300,'SOUP'),
('거',' ',20000,19300,'SOUP'),
('넣',' ',20000,19300,'SOUP'),
('어',' ',20000,19300,'SIDE'),
('주',' ',20000,19300,'SIDE'),
('세',' ',20000,19300,'SIDE'),
('용',' ',20000,19300,'SIDE'),
('가',' ',20000,19300,'SIDE'),
('격',' ',20000,19300,'MAIN'),
('도',' ',20000,19300,'MAIN'),
('욤!!',' ',20000,19300,'MAIN');
-- //@ Todo 샘플데이터베이스 넣어주세요


INSERT INTO item(title, description, normal_price, sale_price,badges,delivery_types,images, category) values
('돼지국밥맛집','종가집돼지순대',10000,9000,'EVENT, LAUNCHING','DOMESTIC_POST',
 'http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg, http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg, http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg, http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg, http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg, http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg, http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg, http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg'
 ,'MAIN'),

('[미노리키친] 규동 250g','일본인의 소울푸드! 한국인도 좋아하는 소고기덮밥','6500','7000','EVENT','DOMESTIC_POST, NEXT_DAY',
 'http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg, http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg, http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg, http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg, http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg, http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg, http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg, http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg, http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg, http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/c0dd6887c9d9368604fc70d7fc3c4598.jpg'
 ,'MAIN');



-- //@ Todo : 뱃지 종류는 EVENT, LAUNCHING 두가지만 넣어놨습니다 이거

-- //@ Todo : 배송정보가

-- //@ Todo 데이터 추가
-- https://www.notion.so/e2b118a5f0ce44aa874240c922a52d14?v=3ba79bf90d0d41a48099f50dcf649869 여기(루카스 목업API 상세정보) 리소스 긁어다가 쓰면 될듯해여..

-- //@ Todo : 의논해볼 사항 : 하다보니까, 이미지도 낫널로 만들어줘야할꺼같다가도.. 이미지없음 대체이미지 쓰도록 유도해도좋을꺼같고.. 토론해보시정
-- //@ 추가로, 이미지 구분자에 \n(개행문자) 들어가지않게 하려고하는데 뭔지모르겠어요 ㅠㅠ....
SELECT * from item;
