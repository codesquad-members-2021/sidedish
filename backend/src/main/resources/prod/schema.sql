-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema sidedish
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `sidedish` ;

-- -----------------------------------------------------
-- Schema sidedish
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `sidedish` DEFAULT CHARACTER SET utf8 ;
USE `sidedish` ;




-- -----------------------------------------------------
-- Table `sidedish`.`menu`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sidedish`.`category` ;

CREATE TABLE IF NOT EXISTS `sidedish`.`category` (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `category_name` VARCHAR(45) NOT NULL,
    `end_point` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sidedish`.`dish`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sidedish`.`dish` ;

CREATE TABLE IF NOT EXISTS `sidedish`.`dish` (
    `detail_hash` VARCHAR(50),
    `image` VARCHAR(100),
    `title` VARCHAR(50),
    `description` VARCHAR(100),
    `price` INT(11),
    `sale_price` INT(11),
    `point` INT(11),
    `delivery_info` VARCHAR(50),
    `delivery_fee` INT(11),
    `category_id` INT(11),
    `quantity` INT(11),
    `current_date_time` TIMESTAMP,
    PRIMARY KEY (`detail_hash`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8;

-- -----------------------------------------------------
-- Table `sidedish`.`delivery`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sidedish`.`delivery` ;

CREATE TABLE IF NOT EXISTS `sidedish`.`delivery` (
    `id` INT(11) NOT NULL,
    `delivery_type` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8;

-- -----------------------------------------------------
-- Table `sidedish`.`dish_delivery`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sidedish`.`dish_delivery` ;

CREATE TABLE IF NOT EXISTS `sidedish`.`dish_delivery`(
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `dish` VARCHAR (50),
    `delivery` INT,
    CONSTRAINT dish_delivery_dish_foreign_key FOREIGN KEY (`dish`) REFERENCES `dish` (detail_hash),
    CONSTRAINT dish_delivery_delivery_foreign_key FOREIGN KEY (`delivery`) REFERENCES `delivery` (id)
);



-- -----------------------------------------------------
-- Table `sidedish`.`sale`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sidedish`.`sale` ;

CREATE TABLE IF NOT EXISTS `sidedish`.`sale` (
    `id` INT(11) NOT NULL,
    `badge` VARCHAR(45) NOT NULL,
    `sale_type` VARCHAR(45) NOT NULL,
    `sale_value` INT(11) NOT NULL,
    PRIMARY KEY (`id`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sidedish`.`dish_sale`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sidedish`.`dish_sale` ;

CREATE TABLE IF NOT EXISTS `sidedish`.`dish_sale`(
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `dish` VARCHAR (50),
    `sale` INT,
    CONSTRAINT dish_sale_dish_foreign_key FOREIGN KEY (`dish`) REFERENCES `dish` (detail_hash),
    CONSTRAINT dish_sale_sale_foreign_key FOREIGN KEY (`sale`) REFERENCES `sale` (id)
);


DROP TABLE IF EXISTS `sidedish`.`image` ;

CREATE TABLE IF NOT EXISTS `sidedish`.`image` (
    `id` INT(11) AUTO_INCREMENT NOT NULL,
    `image_url` VARCHAR(100) NOT NULL,
    `type` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sidedish`.`dish_sale`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sidedish`.`dish_image` ;

CREATE TABLE IF NOT EXISTS `sidedish`.`dish_image`(
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `dish` VARCHAR (50),
    `image` INT,
    CONSTRAINT dish_image_dish_foreign_key FOREIGN KEY (`dish`) REFERENCES `dish` (detail_hash),
    CONSTRAINT dish_image_image_foreign_key FOREIGN KEY (`image`) REFERENCES `image` (id)
);


INSERT INTO sidedish.category
    (id, category_name, end_point)
VALUES
    (1, '메인요리', '/main'),
    (2, '국.찌개', '/soup'),
    (3, '반찬', '/side');


INSERT INTO sidedish.dish
    (detail_hash, image, title, description, price, sale_price,point, delivery_info, delivery_fee, category_id, quantity)
VALUES
    ('HBDEF', 'http://public.codesquad.kr/jk/storeapp/data/2d3f99a9a35601f4e98837bc4d39b2c8.jpg', '[미노리키친] 규동 250g', '일본인의 소울푸드! 한국인도 좋아하는 소고기덮밥', 6000, 5200, 52,'서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가)' ,2500, 1, 5),
    ('HDF73', 'http://public.codesquad.kr/jk/storeapp/data/7674311a02ba7c88675f3186ddaeef9e.jpg', '[빅마마의밥친구] 아삭 고소한 연근고기조림 250g', '편식하는 아이도 좋아하는 건강한 연근조림', 5500, null, 55, '서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가)' ,2500, 1, 5),
    ('HF778', 'http://public.codesquad.kr/jk/storeapp/data/cad8eee316cf7151e07638aa57b32a9d.jpg', '[소중한식사] 골뱅이무침 195g', '매콤새콤달콤, 반찬으로도 안주로도 좋은', 7000, 6300, 63, '서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가)' ,2500, 1, 5),
    ('HFB53', 'http://public.codesquad.kr/jk/storeapp/data/b6beada6b89af950289003d929936d9c.jpg', '[옹가솜씨] 꽁치간장조림 240g', '[옹가솜씨] 꽁치간장조림 240g', 5800, null, 58, '서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가)' ,2500, 1, 5),
    ('H077F', 'http://public.codesquad.kr/jk/storeapp/data/0221110ead70dfd455e40703bbdd6252.jpg', '[마더앤찬] 코다리구이 320g', '큼지막하고 살집 많은 동태 한 마리로 만든 코다리구이입니다.', 7500, 6750, 67, '서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가)' ,2500, 1, 5),
    ('H4665', 'http://public.codesquad.kr/jk/storeapp/data/385f4106ac26f6e4fe7c640714f405a5.jpg', '[남도애꽃] 반건조 문어조림 120g', '씹을수록 감칠맛나는 문어살의 쫄깃함', 4600, null, 46, '서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가)' ,2500, 1, 5),
    ('H1AA9', 'http://public.codesquad.kr/jk/storeapp/data/2455226945d52f5aefd51f35d663bb16.jpg', '[마샐미디쉬] 매콤마늘쫑 해산물볶음 180g', '탱글탱글한 새우와 오징어를 마늘쫑과 함께 매콤하게 볶아냈어요.', 6900, 6210, 62, '서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가)' ,2500, 1, 5),
    ('HEDFB', 'http://public.codesquad.kr/jk/storeapp/data/bc3b777115e8377a48c7bd762fe5fdc9.jpg', '[빅마마의밥친구] 비빔오징어 150g', '달콤한 신야초발효액이 포인트!', 5000, null, 50, '서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가)' ,2500, 1, 5),

    ('H72C3', 'http://public.codesquad.kr/jk/storeapp/data/d1fccf125f0a78113d0e06cb888f2e74.jpg', '[수하동] 특곰탕 850g', '100% 한우양지로 끓여낸 70년전통의 서울식곰탕', 15000, 14200, 142, '서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가)' ,2500, 2, 5),
    ('HA6EE', 'http://public.codesquad.kr/jk/storeapp/data/c069bc32cb37727c59e1f0c2839311a0.jpg', '[빅마마의밥친구] 된장찌개 900g', '항아리에서 숙성시킨 집된장으로만 맛을내 짜지 않은 된장찌개', 10000, null, 100, '서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가)' ,2500, 2, 5),
    ('H8CD0', 'http://public.codesquad.kr/jk/storeapp/data/f31fc3f5828c27ff60e4cf89a862d31c.jpg', '[탐나는밥상] 동태탕 1000g', '칼칼한 국물이 속 풀기에 딱 좋은 동태탕', 14000, null, 140, '서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가)' ,2500, 2, 5),
    ('HE2E9', 'http://public.codesquad.kr/jk/storeapp/data/6edbb16da52708e8533b85fbf743f882.jpg', '[국물닷컴] 치즈부대찌개 600g', '안주용 부대찌개와는 달라 밥말아먹기 딱 좋은', 4300, null, 43, '서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가)' ,2500, 2, 5),
    ('HAA47', 'http://public.codesquad.kr/jk/storeapp/data/892f3e7f043bfa7dbbcd58f88eecac36.jpg', '[집밥의완성] 스키야키 1.5kg (2~3인분)', '진한 풍미의 일본식 전골, 스키야키', 10000, null, 100, '서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가)' ,2500, 2, 5),
    ('H3254', 'http://public.codesquad.kr/jk/storeapp/data/ae571e13d18fd4f0f40d685d2c8fe8f1.jpg', '[새로미부산어묵] 프리미엄 어묵탕세트', '밀가루 0% 프리미엄 어묵에 어묵스프까지 드려요!', 18000, 14400, 144, '서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가)' ,2500, 2, 5),
    ('H26C7', 'http://public.codesquad.kr/jk/storeapp/data/8fd330b5f5dbccbcbf4f5731e5e9e29b.jpg', '[모이세] 육개장 1팩(600g)', '제주3대해장국 맛집의 인기메뉴', 5000, 4400, 44, '서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가)' ,2500, 2, 5),
    ('HFFF9', 'http://public.codesquad.kr/jk/storeapp/data/2416b58044d49f0d3a24256f8e76163b.jpg', '[마더앤찬] 명란감자국  630ml', '간간한 저염명란과 고소한 감자가 조화로운 국이에요', 7000, 6300, 63, '서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가)' ,2500, 2, 5),

    ('HBBCC', 'http://public.codesquad.kr/jk/storeapp/data/fdb0d5fcfb86e332505785225a6d9ade.jpg', '[마샐미디쉬] 유자소스 연근무침 250g', '향긋한 유자향과 아삭한 연근', 6500, null, 65, '서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가)' ,2500, 3, 5),
    ('H1939', 'http://public.codesquad.kr/jk/storeapp/data/e5646e5fc09a01a9243979b229e0572b.jpg', '[동네부엌] 쇠고기야채장조림 200g', '부드러운 고기부터 밥비벼먹기 딱좋은 국물까지', 7400, null, 74, '서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가)' ,2500, 3, 5),
    ('H8EA5', 'http://public.codesquad.kr/jk/storeapp/data/4cfd1954861ebd18b5b53e558a8e902e.jpg', '[소중한식사] 도라지초무침 150g', '새콤달콤 입맛 돋우는', 4000, null, 40, '서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가)' ,2500, 3, 5),
    ('H602F', 'http://public.codesquad.kr/jk/storeapp/data/422befe07f7e2860b9a83a8d7049ec2e.jpg', '[미노리키친] 일본식 우엉조림(킨피라고보) 80g', '한국식 우엉조림과는 다른 진한 감칠맛', 3300, null, 33, '서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가)' ,2500, 3, 5),

    ('H9F0B', 'http://public.codesquad.kr/jk/storeapp/data/d0b5d2be962947d9534e2140d1b34b2d.jpg', '[빅마마의밥친구] 갈치포무침 150g', '쉽게 접할수 없는 꼬순내가득 갈치포 무침', 7000, null, 70, '서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가)' ,2500, 3, 5),
    ('H0FC6', 'http://public.codesquad.kr/jk/storeapp/data/f6817349118d4c671da8dca9065649a9.jpg', '[마더앤찬] 명란치즈계란말이 230g', '아이반찬으로 최고 계란말이', 3870, null, 38, '서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가)' ,2500, 3, 5),
    ('HCCFE', 'http://public.codesquad.kr/jk/storeapp/data/757878b14ee5a8d5af905c154fc38f01.jpg', '[옹가솜씨] 달걀곤약조림 330g', '칼로리 부담 쭉쭉 내린', 5800, null, 58, '서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가)' ,2500, 3, 5),
    ('HB9C1', 'http://public.codesquad.kr/jk/storeapp/data/043cf496f07899e7515f761e29d1ffa9.jpg', '[너의반찬] 미소된장 고추무침 200g', '고소한 양념 때문에 손이 자꾸 가요', 4500, null, 45, '서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가)' ,2500, 3, 5);

INSERT INTO sidedish.image
    (id, image_url, type)
VALUES
    (1, 'http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg', 'thumb'),
    (2, 'http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg', 'thumb'),
    (3, 'http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg', 'thumb'),
    (4, 'http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg', 'thumb'),
    (5, 'http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg', 'detail'),
    (6, 'http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg', 'detail'),
    (7, 'http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg', 'detail'),
    (8, 'http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg', 'detail'),
    (9, 'http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg', 'detail'),
    (10, 'http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg', 'detail'),
    (11, 'http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg', 'detail'),
    (12, 'http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg', 'detail'),
    (13, 'http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg', 'detail'),
    (14, 'http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/c0dd6887c9d9368604fc70d7fc3c4598.jpg', 'detail'),

    (15, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0f95f44ea8e2e7930321def493753a48.jpg', 'thumb'),
    (16, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/2d408898494ac950d7d2cfd6c36d59c2.jpg', 'thumb'),
    (17, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/62c8bb77facfc9c3be81f9bf45b27f2a.jpg', 'thumb'),
    (18, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/f6d73afc0ebc1efa71eaea32e9d846f2.jpg', 'thumb'),
    (19, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg', 'detail'),
    (20, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/5f73c5c80b62ef63c8a8eecefe32fc29.jpg', 'detail'),
    (21, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg', 'detail'),
    (22, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0253cdebc4972fefd6b94458024fe765.jpg', 'detail'),
    (23, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/3299da0677b50c8c519adc0335271c49.jpg', 'detail'),
    (24, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0642265b65dcc2490ab164ff428cbfe2.jpg', 'detail'),
    (25, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/695683493c1ae475a175475f50d3259f.jpg', 'detail'),
    (26, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/c8f9bed4f5c07585b869e3d171904a93.jpg', 'detail'),
    (27, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d2e3274c95c832bc9bfbcebbd548f61b.jpg', 'detail'),
    (28, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d9e4fa00652483d74b46317d38159a2f.jpg', 'detail'),
    (29, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d7799b67683128642453f9e2b4c8ce84.jpg', 'detail'),


    (30, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/4e96f386d5a5c4459bc0ac6ffd0c1fce.jpg', 'thumb'),
    (31, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/00327d0df92e29bad02e7387349bed53.jpg', 'thumb'),
    (32, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/781fea32c56eb102429902a2f62cbaf3.jpg', 'thumb'),
    (33, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/edd7a54096d6df1b8bc8b318cea0191c.jpg', 'detail'),
    (34, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/fb8e6e21faa8284021c1b1c7a1ae1281.jpg', 'detail'),
    (35, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/36a0566d2fb69a4bcea946727181836d.jpg', 'detail'),

    (36, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/2ad963a9f63d371826748c852a0025c3.jpg', 'thumb'),
    (37,'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/f945d8ac1dccc3f931bcaf35de5de582.jpg', 'thumb'),
    (38,'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/bacb0b8186371bfafbd92dbeec718e13.jpg', 'thumb'),
    (39,'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b96b02e9a956c6d5ad1e10eb14ba81e0.jpg', 'thumb'),
    (40,'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/3d67aabd2751620367e1d1ac3e3d7ef2.jpg', 'detail'),
    (41,'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/855b42b4e80162e6930f06aa80bd1272.jpg', 'detail'),
    (42,'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/1966de56cf138639d5d50d4bf2db8e72.jpg', 'detail'),
    (43,'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b3dd54082745d1188f3a6e582e7cd993.jpg', 'detail'),
    (44,'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/4a6fd1fd1116c14aa6aef5e6851ab6a9.jpg', 'detail'),
    (45,'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/7e12275d669102d0269278a7c91ab49d.jpg', 'detail'),
    (46,'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/ab34ea3755f59a21662266eb62b7bc4b.jpg', 'detail'),
    (47,'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b0a70ff59a3b5360b6246b507693c4d4.jpg', 'detail'),
    (48,'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/dc772923b4a2e053f1baf68fa28a48ee.jpg', 'detail'),

    (49, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/c8c8045696b4692107ef28c8b445ca42.jpg', 'thumb'),
    (50, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/edc6bae2e2663f05b4e8eb5a2b95d68f.jpg', 'thumb'),
    (51, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/c935f5913dc66b11ebceeef85485c438.jpg', 'thumb'),
    (52, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/7c1e24867611394f04b37d05593e21ba.jpg', 'thumb'),
    (53, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/670e7deefe1d84a4f4e058655fbd4d7c.jpg', 'detail'),
    (54, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/1898cda038e92454395b8ffca8cd4393.jpg', 'detail'),
    (55, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/49516d302dad870fbdd75cf98a01eae4.jpg', 'detail'),
    (56, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/c1bb6fe4f72fcea27ea989ae48c61c86.jpg', 'detail'),
    (57, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/49afed8d3ec417b39ce8de456fc6661c.jpg', 'detail'),
    (58, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/e62762e63f3e12dc2857a065badf1eea.jpg', 'detail'),
    (59, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/31103ab946bff52b709ec6891e768c05.jpg', 'detail'),
    (60, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/f84dc16f4f6d97661bd13d587a72d6b1.jpg', 'detail'),
    (61, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/fd3f49614f731a0610a5409c0deb3c60.jpg', 'detail'),

    (62, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/43c38eeffa556554c9b06301eb3e85b2.jpg', 'thumb'),
    (63, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/92f556b605c4a84813070d7214c4f336.jpg', 'thumb'),
    (64, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/538b8ab021c7814aa4af860d94f81287.jpg', 'thumb'),
    (65, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/adaef08ab0680b087096afa0f0070fad.jpg', 'thumb'),
    (66, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/341b8605fa224ec1808c4f169097d170.jpg', 'detail'),
    (67, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/0228d4cb660a3cca06952917bd024dcb.jpg', 'detail'),
    (68, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/e027227f61a93b6473e8c4bbd5c3de74.jpg', 'detail'),
    (69, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/03ac0b09199421bb61727c667c2361f6.jpg', 'detail'),
    (70, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/cbe4a3e12b7bdba5cf410e0e19dcf1ca.jpg', 'detail'),
    (71,'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/b58fa5791b67db106524b48442cb1c6a.jpg', 'detail'),
    (72,'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/82cfe0332f0e1c927a23b79f1d152430.jpg', 'detail'),
    (73,'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/390ca9ad5a574cbe7f3f6e26871f6690.jpg', 'detail'),
    (74,'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/e113889a6120357c8e6196802a9f155b.jpg', 'detail'),
    (75,'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/967e8e1ef357e9722b796e2bcb09ba3d.jpg', 'detail');

INSERT INTO sidedish.dish_image
    (dish, image)
values
    ('HBDEF', 1),('HBDEF', 2),('HBDEF', 3),('HBDEF', 4),('HBDEF', 5),('HBDEF', 6),('HBDEF', 7),('HBDEF', 8),('HBDEF', 9),('HBDEF', 10),('HBDEF', 11),('HBDEF', 12),('HBDEF', 13),('HBDEF', 14),
    ('HDF73', 15),('HDF73', 16),('HDF73', 17),('HDF73', 18),('HDF73', 19),('HDF73', 20),('HDF73', 21),('HDF73', 22),('HDF73', 23),('HDF73', 24),('HDF73', 25),('HDF73', 26),('HDF73', 27),('HDF73', 28),('HDF73', 29),
    ('HF778', 1),('HF778', 2),('HF778', 3),('HF778', 4),('HF778', 5),('HF778', 6),('HF778', 7),('HF778', 8),('HF778', 9),('HF778', 10),('HF778', 11),('HF778', 12),('HF778', 13),('HF778', 14),
    ('HFB53', 1),('HFB53', 2),('HFB53', 3),('HFB53', 4),('HFB53', 5),('HFB53', 6),('HFB53', 7),('HFB53', 8),('HFB53', 9),('HFB53', 10),('HFB53', 11),('HFB53', 12),('HFB53', 13),('HFB53', 14),
    ('H077F', 1),('H077F', 2),('H077F', 3),('H077F', 4),('H077F', 5),('H077F', 6),('H077F', 7),('H077F', 8),('H077F', 9),('H077F', 10),('H077F', 11),('H077F', 12),('H077F', 13),('H077F', 14),
    ('H4665', 15),('H4665', 16),('H4665', 17),('H4665', 18),('H4665', 19),('H4665', 20),('H4665', 21),('H4665', 22),('H4665', 23),('H4665', 24),('H4665', 25),('H4665', 26),('H4665', 27),('H4665', 28),('H4665', 29),
    ('H1AA9', 15),('H1AA9', 16),('H1AA9', 17),('H1AA9', 18),('H1AA9', 19),('H1AA9', 20),('H1AA9', 21),('H1AA9', 22),('H1AA9', 23),('H1AA9', 24),('H1AA9', 25),('H1AA9', 26),('H1AA9', 27),('H1AA9', 28),('H1AA9', 29),
    ('HEDFB', 15),('HEDFB', 16),('HEDFB', 17),('HEDFB', 18),('HEDFB', 19),('HEDFB', 20),('HEDFB', 21),('HEDFB', 22),('HEDFB', 23),('HEDFB', 24),('HEDFB', 25),('HEDFB', 26),('HEDFB', 27),('HEDFB', 28),('HEDFB', 29),

    ('H72C3', 30),('H72C3', 31),('H72C3', 32),('H72C3', 33),('H72C3', 34),('H72C3', 35),
    ('HA6EE', 30),('HA6EE', 31),('HA6EE', 32),('HA6EE', 33),('HA6EE', 34),('HA6EE', 35),
    ('H8CD0', 30),('H8CD0', 31),('H8CD0', 32),('H8CD0', 33),('H8CD0', 34),('H8CD0', 35),
    ('HE2E9', 30),('HE2E9', 31),('HE2E9', 32),('HE2E9', 33),('HE2E9', 34),('HE2E9', 35),
    ('HAA47', 30),('HAA47', 31),('HAA47', 32),('HAA47', 33),('HAA47', 34),('HAA47', 35),
    ('H3254', 36),('H3254', 37),('H3254', 38),('H3254', 39),('H3254', 40),('H3254', 41),('H3254', 42),('H3254', 43),('H3254', 44),('H3254', 45),('H3254', 46),('H3254', 47),('H3254', 48),
    ('H26C7', 36),('H26C7', 37),('H26C7', 38),('H26C7', 39),('H26C7', 40),('H26C7', 41),('H26C7', 42),('H26C7', 43),('H26C7', 44),('H26C7', 45),('H26C7', 46),('H26C7', 47),('H26C7', 48),
    ('HFFF9', 36),('HFFF9', 37),('HFFF9', 38),('HFFF9', 39),('HFFF9', 40),('HFFF9', 41),('HFFF9', 42),('HFFF9', 43),('HFFF9', 44),('HFFF9', 45),('HFFF9', 46),('HFFF9', 47),('HFFF9', 48),

    ('HBBCC', 49),('HBBCC', 50),('HBBCC', 51),('HBBCC', 52),('HBBCC', 53),('HBBCC', 54),('HBBCC', 55),('HBBCC', 56),('HBBCC', 57),('HBBCC', 58),('HBBCC', 59),('HBBCC', 60),('HBBCC', 61),
    ('H1939', 49),('H1939', 50),('H1939', 51),('H1939', 52),('H1939', 53),('H1939', 54),('H1939', 55),('H1939', 56),('H1939', 57),('H1939', 58),('H1939', 59),('H1939', 60),('H1939', 61),
    ('H8EA5', 49),('H8EA5', 50),('H8EA5', 51),('H8EA5', 52),('H8EA5', 53),('H8EA5', 54),('H8EA5', 55),('H8EA5', 56),('H8EA5', 57),('H8EA5', 58),('H8EA5', 59),('H8EA5', 60),('H8EA5', 61),
    ('H602F', 49),('H602F', 50),('H602F', 51),('H602F', 52),('H602F', 53),('H602F', 54),('H602F', 55),('H602F', 56),('H602F', 57),('H602F', 58),('H602F', 59),('H602F', 60),('H602F', 61),
    ('H9F0B', 62),('H9F0B', 63),('H9F0B', 64),('H9F0B', 65),('H9F0B', 66),('H9F0B', 67),('H9F0B', 68),('H9F0B', 69),('H9F0B', 70),('H9F0B', 71),('H9F0B', 72),('H9F0B', 73),('H9F0B', 74),('H9F0B', 75),
    ('H0FC6', 62),('H0FC6', 63),('H0FC6', 64),('H0FC6', 65),('H0FC6', 66),('H0FC6', 67),('H0FC6', 68),('H0FC6', 69),('H0FC6', 70),('H0FC6', 71),('H0FC6', 72),('H0FC6', 73),('H0FC6', 74),('H0FC6', 75),
    ('HCCFE', 62),('HCCFE', 63),('HCCFE', 64),('HCCFE', 65),('HCCFE', 66),('HCCFE', 67),('HCCFE', 68),('HCCFE', 69),('HCCFE', 70),('HCCFE', 71),('HCCFE', 72),('HCCFE', 73),('HCCFE', 74),('HCCFE', 75),
    ('HB9C1', 62),('HB9C1', 63),('HB9C1', 64),('HB9C1', 65),('HB9C1', 66),('HB9C1', 67),('HB9C1', 68),('HB9C1', 69),('HB9C1', 70),('HB9C1', 71),('HB9C1', 72),('HB9C1', 73),('HB9C1', 74),('HB9C1', 75);

INSERT INTO sidedish.sale
    (id, badge, sale_type, sale_value)
VALUES
    (1, '이벤트특가', 'percentage', 10),
    (2, '런칭특가', 'minus', 1000);

INSERT INTO sidedish.dish_sale
    (dish, sale)
VALUES
    ('HBDEF', 1),
    ('HF778', 1),
    ('H077F', 1),
    ('H1AA9', 1),
    ('H72C3', 1),
    ('H72C3', 2),
    ('H3254', 1),
    ('H3254', 2),
    ('H26C7', 1),
    ('H26C7', 2),
    ('HFFF9', 1),
    ('HFFF9', 2);

INSERT INTO sidedish.delivery
    (id, delivery_type)
VALUES
    (1, '새벽배송'),
    (2, '전국택배');

INSERT INTO sidedish.dish_delivery
    (dish, delivery)
VALUES
    ('HBDEF', 1), ('HBDEF', 2),
    ('HDF73', 1), ('HDF73', 2),
    ('HF778', 1), ('HF778', 2),
    ('HFB53', 1),('HFB53', 2),
    ('H077F', 1),('H077F', 2),
    ('H4665', 1),('H4665', 2),
    ('H1AA9', 1),('H1AA9', 2),
    ('HEDFB', 1),('HEDFB', 2),
    ('H72C3', 1),('H72C3', 2),
    ('HA6EE', 1),('HA6EE', 2),
    ('H8CD0', 1),('H8CD0', 2),
    ('HE2E9', 1),('HE2E9', 2),
    ('HAA47', 1),('HAA47', 2),
    ('H3254', 1),('H3254', 2),
    ('H26C7', 1),('H26C7', 2),
    ('HFFF9', 1),('HFFF9', 2),
    ('HBBCC', 1),('HBBCC', 2),
    ('H1939', 1),('H1939', 2),
    ('H8EA5', 1),('H8EA5', 2),
    ('H602F', 1),('H602F', 2),
    ('H9F0B', 1),('H9F0B', 2),
    ('H0FC6', 1),('H0FC6', 2),
    ('HCCFE', 1),('HCCFE', 2),
    ('HB9C1', 1),('HB9C1', 2);


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
