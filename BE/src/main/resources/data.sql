-- -----------------------------------------------------
-- best_menu_category
-- -----------------------------------------------------
insert into best_menu_category(name) values ('할인특가 세트상품');
insert into best_menu_category(name) values ('풍성한 고기반찬');
insert into best_menu_category(name) values ('편리한 반찬세트');
insert into best_menu_category(name) values ('간편한 덮밥요리');
insert into best_menu_category(name) values ('우리아이 영양반찬');

-- -----------------------------------------------------
-- menu_category
-- -----------------------------------------------------
insert into menu_category(name) values ('best');
insert into menu_category(name) values ('main');
insert into menu_category(name) values ('soup');
insert into menu_category(name) values ('side');

-- -----------------------------------------------------
-- best/1
-- -----------------------------------------------------
insert into dish(`hash`, alt, title, description, n_price, s_price, `point`, menu_category_id, best_menu_category_id) values ('H988101', '[소중한식사] 경상도 한상차림', '[소중한식사] 경상도 한상차림','경상도 명물 요리 세 가지를 한 상에!', 39000, 31200, 123, 1, 1);
insert into dish(`hash`, alt, title, description, n_price, s_price, `point`, menu_category_id, best_menu_category_id) values ('HDF4C02', '[딩고] 시그니처 3종 SET', '[딩고] 시그니처 3종 SET','오늘 저녁은 이상하게 안주빨을 세워보고 싶다!', 32800, 24000, 123, 1, 1);
insert into dish(`hash`, alt, title, description, n_price, s_price, `point`, menu_category_id, best_menu_category_id) values ('H7F2003', '[집밥의완성]초여름보양세트', '[집밥의완성]초여름보양세트','무더위에 대비하는 6월 한상차림 초여름 보양세트', 26000, 18000, 123, 1, 1);
insert into dish(`hash`, alt, title, description, n_price, s_price, `point`, menu_category_id, best_menu_category_id) values ('E055F04', '[동네부엌] 사계절 건강식단 작은상', '[동네부엌] 사계절 건강식단 작은상','마포엄마들이 사랑해온 건강반찬', 24000, 10000, 123, 1, 1);
insert into dish(`hash`, alt, title, description, n_price, s_price, `point`, menu_category_id, best_menu_category_id) values ('FDAEB05', '[집밥의완성] 한상 가득 세트 (3~4인)', '[집밥의완성] 한상 가득 세트 (3~4인)','[집밥의완성] 한상 가득 세트 (3~4인)', 40000, 31000, 100, 1, 1);
insert into dish(`hash`, alt, title, description, n_price, s_price, `point`, menu_category_id, best_menu_category_id) values ('H762E06', '[옹가솜씨] 한끼뚝딱세트', '[옹가솜씨] 한끼뚝딱세트','한 세트만 있으면 한 끼 뚝딱', 19000, 15000, 123, 1, 1);

-- -----------------------------------------------------
-- best/2
-- -----------------------------------------------------
insert into dish(`hash`, alt, title, description, n_price, s_price, `point`, menu_category_id, best_menu_category_id) values ('HA56707', '[아내의쉐프] 아쉐찜닭', '[아내의쉐프] 아쉐찜닭','[아내의쉐프] 아쉐찜닭', 11000, 10000, 123, 1, 2);
insert into dish(`hash`, alt, title, description, n_price, s_price, `point`, menu_category_id, best_menu_category_id) values ('H206E08', '[애슐리투고] 로스트 콤보 450g', '[애슐리투고] 로스트 콤보 450g','립과 치킨이 만나  더욱 맛있게', 12000, 10000, 100, 1, 2);
insert into dish(`hash`, alt, title, description, n_price, s_price, `point`, menu_category_id, best_menu_category_id) values ('H75A209', '[한옥집]소갈비김치찜 2인분', '[한옥집]소갈비김치찜 2인분','부드러운 소갈비와 함께 푹 쪄낸 김치찜!', 16000, 15000, 90, 1, 2);
insert into dish(`hash`, alt, title, description, n_price, s_price, `point`, menu_category_id, best_menu_category_id) values ('H206E10', '[남도애꽃] 통오징어초롱 300g', '[남도애꽃] 통오징어초롱 300g','국내산 오징어를 통째로 불맛소스와 함께', 14000, 10000, 123, 1, 2);
insert into dish(`hash`, alt, title, description, n_price, s_price, `point`, menu_category_id, best_menu_category_id) values ('HA8B911', '[황태종가] 황태양념구이 300g', '[황태종가] 황태양념구이 300g','청정 황태마을 인제에서 온 깊은 맛', 15000, 11000, 100, 1, 2);

-- -----------------------------------------------------
-- best/3
-- -----------------------------------------------------
insert into dish(`hash`, alt, title, description, n_price, s_price, `point`, menu_category_id, best_menu_category_id) values ('H206E12', '[남도애꽃] 통오징어초롱 300g', '[남도애꽃] 통오징어초롱 300g','국내산 오징어를 통째로 불맛소스와 함께', 14000, 10000, 123, 1, 3);
insert into dish(`hash`, alt, title, description, n_price, s_price, `point`, menu_category_id, best_menu_category_id) values ('HA8B913', '[황태종가] 황태양념구이 300g', '[황태종가] 황태양념구이 300g','청정 황태마을 인제에서 온 깊은 맛', 15000, 11000, 100, 1, 3);
insert into dish(`hash`, alt, title, description, n_price, s_price, `point`, menu_category_id, best_menu_category_id) values ('HA56714', '[아내의쉐프] 아쉐찜닭', '[아내의쉐프] 아쉐찜닭','[아내의쉐프] 아쉐찜닭', 11000, 10000, 123, 1, 3);
insert into dish(`hash`, alt, title, description, n_price, s_price, `point`, menu_category_id, best_menu_category_id) values ('H206E15', '[애슐리투고] 로스트 콤보 450g', '[애슐리투고] 로스트 콤보 450g','립과 치킨이 만나  더욱 맛있게', 12000, 10000, 100, 1, 3);
insert into dish(`hash`, alt, title, description, n_price, s_price, `point`, menu_category_id, best_menu_category_id) values ('H75A216', '[한옥집]소갈비김치찜 2인분', '[한옥집]소갈비김치찜 2인분','부드러운 소갈비와 함께 푹 쪄낸 김치찜!', 16000, 15000, 90, 1, 3);

-- -----------------------------------------------------
-- best/4
-- -----------------------------------------------------
insert into dish(`hash`, alt, title, description, n_price, s_price, `point`, menu_category_id, best_menu_category_id) values ('E055F17', '[동네부엌] 사계절 건강식단 작은상', '[동네부엌] 사계절 건강식단 작은상','마포엄마들이 사랑해온 건강반찬', 24000, 10000, 123, 1, 4);
insert into dish(`hash`, alt, title, description, n_price, s_price, `point`, menu_category_id, best_menu_category_id) values ('FDAEB18', '[집밥의완성] 한상 가득 세트 (3~4인)', '[집밥의완성] 한상 가득 세트 (3~4인)','[집밥의완성] 한상 가득 세트 (3~4인)', 40000, 31000, 100, 1, 4);
insert into dish(`hash`, alt, title, description, n_price, s_price, `point`, menu_category_id, best_menu_category_id) values ('H762E19', '[옹가솜씨] 한끼뚝딱세트', '[옹가솜씨] 한끼뚝딱세트','한 세트만 있으면 한 끼 뚝딱', 19000, 15000, 123, 1, 4);
insert into dish(`hash`, alt, title, description, n_price, s_price, `point`, menu_category_id, best_menu_category_id) values ('H988120', '[소중한식사] 경상도 한상차림', '[소중한식사] 경상도 한상차림','경상도 명물 요리 세 가지를 한 상에!', 39000, 31200, 123, 1, 4);
insert into dish(`hash`, alt, title, description, n_price, s_price, `point`, menu_category_id, best_menu_category_id) values ('HDF4C21', '[딩고] 시그니처 3종 SET', '[딩고] 시그니처 3종 SET','오늘 저녁은 이상하게 안주빨을 세워보고 싶다!', 32800, 24000, 123, 1, 4);
insert into dish(`hash`, alt, title, description, n_price, s_price, `point`, menu_category_id, best_menu_category_id) values ('H7F2022', '[집밥의완성]초여름보양세트', '[집밥의완성]초여름보양세트','무더위에 대비하는 6월 한상차림 초여름 보양세트', 26000, 18000, 123, 1, 4);

-- -----------------------------------------------------
-- best/5
-- -----------------------------------------------------
insert into dish(`hash`, alt, title, description, n_price, s_price, `point`, menu_category_id, best_menu_category_id) values ('H05FB23', '[옹가솜씨] 소고기쩜짜장 280g', '[옹가솜씨] 소고기쩜짜장 280g','짜장의 착한 변신', 8000, 5000, 123, 1, 5);
insert into dish(`hash`, alt, title, description, n_price, s_price, `point`, menu_category_id, best_menu_category_id) values ('H069924', '[무명식당]뿌리채소비빔밥 2인분', '[무명식당]뿌리채소비빔밥 2인분','각종 뿌리채소를 듬뿍 넣어 지은 뿌리채소영양밥', 40000, 31000, 100, 1, 5);
insert into dish(`hash`, alt, title, description, n_price, s_price, `point`, menu_category_id, best_menu_category_id) values ('HBDEF25', '[미노리키친] 규동 250g', '[미노리키친] 규동 250g','일본인의 소울푸드! 한국인도 좋아하는 소고기덮밥', 19000, 15000, 123, 1, 5);
insert into dish(`hash`, alt, title, description, n_price, s_price, `point`, menu_category_id, best_menu_category_id) values ('H988126', '[소중한식사] 경상도 한상차림', '[소중한식사] 경상도 한상차림','경상도 명물 요리 세 가지를 한 상에!', 39000, 31200, 123, 1, 5);
insert into dish(`hash`, alt, title, description, n_price, s_price, `point`, menu_category_id, best_menu_category_id) values ('HDF4C27', '[딩고] 시그니처 3종 SET', '[딩고] 시그니처 3종 SET','오늘 저녁은 이상하게 안주빨을 세워보고 싶다!', 32800, 24000, 123, 1, 5);
insert into dish(`hash`, alt, title, description, n_price, s_price, `point`, menu_category_id, best_menu_category_id) values ('H7F2028', '[집밥의완성]초여름보양세트', '[집밥의완성]초여름보양세트','무더위에 대비하는 6월 한상차림 초여름 보양세트', 26000, 18000, 123, 1, 5);

-- -----------------------------------------------------
-- main
-- -----------------------------------------------------
insert into dish(`hash`, alt, title, description, n_price, s_price, `point`, menu_category_id) values ('HBDEF31', '[미노리키친] 규동 250g', '[미노리키친] 규동 250g','일본인의 소울푸드! 한국인도 좋아하는 소고기덮밥', 6500, 6000, 50, 2);
insert into dish(`hash`, alt, title, description, n_price, s_price, `point`, menu_category_id) values ('HDF7332', '[빅마마의밥친구] 아삭 고소한 연근고기조림 250g', '[빅마마의밥친구] 아삭 고소한 연근고기조림 250g','편식하는 아이도 좋아하는 건강한 연근조림', 5500, 5000, 50, 2);
insert into dish(`hash`, alt, title, description, n_price, s_price, `point`, menu_category_id) values ('HBDEF33', '[미노리키친] 규동 250g', '[미노리키친] 규동 250g','일본인의 소울푸드! 한국인도 좋아하는 소고기덮밥', 6500, 6000, 50, 2);
insert into dish(`hash`, alt, title, description, n_price, s_price, `point`, menu_category_id) values ('HDF7334', '[빅마마의밥친구] 아삭 고소한 연근고기조림 250g', '[빅마마의밥친구] 아삭 고소한 연근고기조림 250g','편식하는 아이도 좋아하는 건강한 연근조림', 5500, 5000, 50, 2);
insert into dish(`hash`, alt, title, description, n_price, s_price, `point`, menu_category_id) values ('HBDEF35', '[미노리키친] 규동 250g', '[미노리키친] 규동 250g','일본인의 소울푸드! 한국인도 좋아하는 소고기덮밥', 6500, 6000, 50, 2);
insert into dish(`hash`, alt, title, description, n_price, s_price, `point`, menu_category_id) values ('HDF7336', '[빅마마의밥친구] 아삭 고소한 연근고기조림 250g', '[빅마마의밥친구] 아삭 고소한 연근고기조림 250g','편식하는 아이도 좋아하는 건강한 연근조림', 5500, 5000, 50, 2);

-- -----------------------------------------------------
-- soup
-- -----------------------------------------------------
insert into dish(`hash`, alt, title, description, n_price, s_price, `point`, menu_category_id) values ('H72C341', '[수하동] 특곰탕 850g', '[수하동] 특곰탕 850g','100% 한우양지로 끓여낸 70년전통의 서울식곰탕', 15000, 14000, 100, 3);
insert into dish(`hash`, alt, title, description, n_price, s_price, `point`, menu_category_id) values ('HA6EE42', '[빅마마의밥친구] 된장찌개 900g', '[빅마마의밥친구] 된장찌개 900g','항아리에서 숙성시킨 집된장으로만 맛을내 짜지 않은 된장찌개', 10000, 8000, 50, 3);
insert into dish(`hash`, alt, title, description, n_price, s_price, `point`, menu_category_id) values ('H72C343', '[수하동] 특곰탕 850g', '[수하동] 특곰탕 850g','100% 한우양지로 끓여낸 70년전통의 서울식곰탕', 15000, 14000, 100, 3);
insert into dish(`hash`, alt, title, description, n_price, s_price, `point`, menu_category_id) values ('HA6EE44', '[빅마마의밥친구] 된장찌개 900g', '[빅마마의밥친구] 된장찌개 900g','항아리에서 숙성시킨 집된장으로만 맛을내 짜지 않은 된장찌개', 10000, 8000, 50, 3);
insert into dish(`hash`, alt, title, description, n_price, s_price, `point`, menu_category_id) values ('H72C345', '[수하동] 특곰탕 850g', '[수하동] 특곰탕 850g','100% 한우양지로 끓여낸 70년전통의 서울식곰탕', 15000, 14000, 100, 3);
insert into dish(`hash`, alt, title, description, n_price, s_price, `point`, menu_category_id) values ('HA6EE46', '[빅마마의밥친구] 된장찌개 900g', '[빅마마의밥친구] 된장찌개 900g','항아리에서 숙성시킨 집된장으로만 맛을내 짜지 않은 된장찌개', 10000, 8000, 50, 3);

-- -----------------------------------------------------
-- side
-- -----------------------------------------------------
insert into dish(`hash`, alt, title, description, n_price, s_price, `point`, menu_category_id) values ('HBBCC51', '[마샐미디쉬] 유자소스 연근무침 250g', '[마샐미디쉬] 유자소스 연근무침 250g','향긋한 유자향과 아삭한 연근', 6000, 5000, 10, 4);
insert into dish(`hash`, alt, title, description, n_price, s_price, `point`, menu_category_id) values ('H193952', '[동네부엌] 쇠고기야채장조림 200g', '[동네부엌] 쇠고기야채장조림 200g','부드러운 고기부터 밥비벼먹기 딱좋은 국물까지', 8000, 7000, 15, 4);
insert into dish(`hash`, alt, title, description, n_price, s_price, `point`, menu_category_id) values ('HBBCC53', '[마샐미디쉬] 유자소스 연근무침 250g', '[마샐미디쉬] 유자소스 연근무침 250g','향긋한 유자향과 아삭한 연근', 6000, 5000, 10, 4);
insert into dish(`hash`, alt, title, description, n_price, s_price, `point`, menu_category_id) values ('H193954', '[동네부엌] 쇠고기야채장조림 200g', '[동네부엌] 쇠고기야채장조림 200g','부드러운 고기부터 밥비벼먹기 딱좋은 국물까지', 8000, 7000, 15, 4);
insert into dish(`hash`, alt, title, description, n_price, s_price, `point`, menu_category_id) values ('HBBCC55', '[마샐미디쉬] 유자소스 연근무침 250g', '[마샐미디쉬] 유자소스 연근무침 250g','향긋한 유자향과 아삭한 연근', 6000, 5000, 10, 4);
insert into dish(`hash`, alt, title, description, n_price, s_price, `point`, menu_category_id) values ('H193956', '[동네부엌] 쇠고기야채장조림 200g', '[동네부엌] 쇠고기야채장조림 200g','부드러운 고기부터 밥비벼먹기 딱좋은 국물까지', 8000, 7000, 15, 4);

-- -----------------------------------------------------
-- badge
-- -----------------------------------------------------
insert into badge(name) values ('이벤트 특가');
insert into badge(name) values ('베스트');
insert into badge(name) values ('론칭 특가');

-- -----------------------------------------------------
-- dish_badge_best
-- -----------------------------------------------------
insert into dish_badge(dish_id, badge_id) values (1, 2);
insert into dish_badge(dish_id, badge_id) values (2, 2);
insert into dish_badge(dish_id, badge_id) values (3, 2);
insert into dish_badge(dish_id, badge_id) values (4, 2);
insert into dish_badge(dish_id, badge_id) values (5, 2);
insert into dish_badge(dish_id, badge_id) values (6, 2);
insert into dish_badge(dish_id, badge_id) values (7, 2);
insert into dish_badge(dish_id, badge_id) values (8, 2);
insert into dish_badge(dish_id, badge_id) values (9, 2);
insert into dish_badge(dish_id, badge_id) values (10, 2);
insert into dish_badge(dish_id, badge_id) values (11, 2);
insert into dish_badge(dish_id, badge_id) values (12, 2);
insert into dish_badge(dish_id, badge_id) values (13, 2);
insert into dish_badge(dish_id, badge_id) values (14, 2);
insert into dish_badge(dish_id, badge_id) values (15, 2);
insert into dish_badge(dish_id, badge_id) values (16, 2);
insert into dish_badge(dish_id, badge_id) values (17, 2);
insert into dish_badge(dish_id, badge_id) values (18, 2);
insert into dish_badge(dish_id, badge_id) values (19, 2);
insert into dish_badge(dish_id, badge_id) values (20, 2);
insert into dish_badge(dish_id, badge_id) values (21, 2);
insert into dish_badge(dish_id, badge_id) values (22, 2);
insert into dish_badge(dish_id, badge_id) values (23, 2);
insert into dish_badge(dish_id, badge_id) values (24, 2);
insert into dish_badge(dish_id, badge_id) values (25, 2);
insert into dish_badge(dish_id, badge_id) values (26, 2);
insert into dish_badge(dish_id, badge_id) values (27, 2);
insert into dish_badge(dish_id, badge_id) values (28, 2);

-- -----------------------------------------------------
-- dish_badge_event_sale
-- -----------------------------------------------------
insert into dish_badge(dish_id, badge_id) values (13, 1);
insert into dish_badge(dish_id, badge_id) values (14, 1);
insert into dish_badge(dish_id, badge_id) values (15, 1);
insert into dish_badge(dish_id, badge_id) values (16, 3);
insert into dish_badge(dish_id, badge_id) values (17, 3);
insert into dish_badge(dish_id, badge_id) values (18, 3);
insert into dish_badge(dish_id, badge_id) values (19, 3);
insert into dish_badge(dish_id, badge_id) values (20, 1);
insert into dish_badge(dish_id, badge_id) values (21, 3);
insert into dish_badge(dish_id, badge_id) values (22, 1);
insert into dish_badge(dish_id, badge_id) values (23, 3);

-- -----------------------------------------------------
-- image for best
-- -----------------------------------------------------
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/2d3f99a9a35601f4e98837bc4d39b2c8.jpg', 1, 1);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/2d3f99a9a35601f4e98837bc4d39b2c8.jpg', 1, 2);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/2d3f99a9a35601f4e98837bc4d39b2c8.jpg', 1, 3);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/2d3f99a9a35601f4e98837bc4d39b2c8.jpg', 1, 4);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/2d3f99a9a35601f4e98837bc4d39b2c8.jpg', 1, 5);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/2d3f99a9a35601f4e98837bc4d39b2c8.jpg', 1, 6);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/2d3f99a9a35601f4e98837bc4d39b2c8.jpg', 1, 7);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/2d3f99a9a35601f4e98837bc4d39b2c8.jpg', 1, 8);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/2d3f99a9a35601f4e98837bc4d39b2c8.jpg', 1, 9);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/2d3f99a9a35601f4e98837bc4d39b2c8.jpg', 1, 10);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/2d3f99a9a35601f4e98837bc4d39b2c8.jpg', 1, 11);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/2d3f99a9a35601f4e98837bc4d39b2c8.jpg', 1, 12);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/2d3f99a9a35601f4e98837bc4d39b2c8.jpg', 1, 13);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/2d3f99a9a35601f4e98837bc4d39b2c8.jpg', 1, 14);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/2d3f99a9a35601f4e98837bc4d39b2c8.jpg', 1, 15);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/2d3f99a9a35601f4e98837bc4d39b2c8.jpg', 1, 16);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/2d3f99a9a35601f4e98837bc4d39b2c8.jpg', 1, 17);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/2d3f99a9a35601f4e98837bc4d39b2c8.jpg', 1, 18);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/2d3f99a9a35601f4e98837bc4d39b2c8.jpg', 1, 19);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/2d3f99a9a35601f4e98837bc4d39b2c8.jpg', 1, 20);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/2d3f99a9a35601f4e98837bc4d39b2c8.jpg', 1, 21);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/2d3f99a9a35601f4e98837bc4d39b2c8.jpg', 1, 22);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/2d3f99a9a35601f4e98837bc4d39b2c8.jpg', 1, 23);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/2d3f99a9a35601f4e98837bc4d39b2c8.jpg', 1, 24);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/2d3f99a9a35601f4e98837bc4d39b2c8.jpg', 1, 25);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/2d3f99a9a35601f4e98837bc4d39b2c8.jpg', 1, 26);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/2d3f99a9a35601f4e98837bc4d39b2c8.jpg', 1, 27);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/2d3f99a9a35601f4e98837bc4d39b2c8.jpg', 1, 28);


insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg', 0, 1);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg', 0, 2);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg', 0, 3);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg', 0, 4);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg', 0, 5);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg', 0, 6);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg', 0, 7);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg', 0, 8);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg', 0, 9);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg', 0, 10);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg', 0, 11);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg', 0, 12);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg', 0, 13);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg', 0, 14);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg', 0, 15);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg', 0, 16);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg', 0, 17);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg', 0, 18);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg', 0, 19);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg', 0, 20);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg', 0, 21);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg', 0, 22);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg', 0, 23);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg', 0, 24);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg', 0, 25);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg', 0, 26);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg', 0, 27);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg', 0, 28);


insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg', 0, 1);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg', 0, 2);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg', 0, 3);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg', 0, 4);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg', 0, 5);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg', 0, 6);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg', 0, 7);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg', 0, 8);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg', 0, 9);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg', 0, 10);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg', 0, 11);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg', 0, 12);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg', 0, 13);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg', 0, 14);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg', 0, 15);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg', 0, 16);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg', 0, 17);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg', 0, 18);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg', 0, 19);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg', 0, 20);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg', 0, 21);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg', 0, 22);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg', 0, 23);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg', 0, 24);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg', 0, 25);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg', 0, 26);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg', 0, 27);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg', 0, 28);


insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg', 0, 1);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg', 0, 2);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg', 0, 3);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg', 0, 4);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg', 0, 5);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg', 0, 6);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg', 0, 7);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg', 0, 8);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg', 0, 9);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg', 0, 10);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg', 0, 11);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg', 0, 12);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg', 0, 13);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg', 0, 14);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg', 0, 15);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg', 0, 16);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg', 0, 17);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg', 0, 18);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg', 0, 19);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg', 0, 20);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg', 0, 21);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg', 0, 22);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg', 0, 23);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg', 0, 24);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg', 0, 25);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg', 0, 26);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg', 0, 27);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg', 0, 28);


insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg', 0, 1);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg', 0, 2);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg', 0, 3);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg', 0, 4);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg', 0, 5);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg', 0, 6);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg', 0, 7);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg', 0, 8);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg', 0, 9);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg', 0, 10);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg', 0, 11);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg', 0, 12);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg', 0, 13);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg', 0, 14);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg', 0, 15);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg', 0, 16);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg', 0, 17);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg', 0, 18);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg', 0, 19);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg', 0, 20);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg', 0, 21);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg', 0, 22);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg', 0, 23);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg', 0, 24);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg', 0, 25);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg', 0, 26);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg', 0, 27);
insert into image(url, top, dish_id) values ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg', 0, 28);

-- -----------------------------------------------------
-- image for main
-- -----------------------------------------------------
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/2d3f99a9a35601f4e98837bc4d39b2c8.jpg', 1, 29);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/7674311a02ba7c88675f3186ddaeef9e.jpg', 1, 30);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/2d3f99a9a35601f4e98837bc4d39b2c8.jpg', 1, 31);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/7674311a02ba7c88675f3186ddaeef9e.jpg', 1, 32);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/2d3f99a9a35601f4e98837bc4d39b2c8.jpg', 1, 33);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/7674311a02ba7c88675f3186ddaeef9e.jpg', 1, 34);


insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg', 0, 29);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg', 0, 30);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg', 0, 31);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg', 0, 32);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg', 0, 33);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg', 0, 34);

insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg', 0, 29);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg', 0, 30);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg', 0, 31);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg', 0, 32);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg', 0, 33);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg', 0, 34);

insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg', 0, 29);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg', 0, 30);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg', 0, 31);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg', 0, 32);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg', 0, 33);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg', 0, 34);

insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg', 0, 29);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg', 0, 30);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg', 0, 31);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg', 0, 32);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg', 0, 33);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg', 0, 34);




-- -----------------------------------------------------
-- image for soup
-- -----------------------------------------------------
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/d1fccf125f0a78113d0e06cb888f2e74.jpg', 1, 35);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/c069bc32cb37727c59e1f0c2839311a0.jpg', 1, 36);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/d1fccf125f0a78113d0e06cb888f2e74.jpg', 1, 37);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/c069bc32cb37727c59e1f0c2839311a0.jpg', 1, 38);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/d1fccf125f0a78113d0e06cb888f2e74.jpg', 1, 39);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/c069bc32cb37727c59e1f0c2839311a0.jpg', 1, 40);


insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg', 0, 35);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg', 0, 36);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg', 0, 40);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg', 0, 37);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg', 0, 38);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg', 0, 39);

insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg', 0, 35);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg', 0, 40);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg', 0, 36);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg', 0, 37);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg', 0, 38);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg', 0, 39);

insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg', 0, 35);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg', 0, 40);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg', 0, 36);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg', 0, 37);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg', 0, 38);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg', 0, 39);

insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg', 0, 35);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg', 0, 40);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg', 0, 36);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg', 0, 37);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg', 0, 38);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg', 0, 39);



-- -----------------------------------------------------
-- image for side
-- -----------------------------------------------------
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/fdb0d5fcfb86e332505785225a6d9ade.jpg', 1, 41);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/e5646e5fc09a01a9243979b229e0572b.jpg', 1, 42);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/fdb0d5fcfb86e332505785225a6d9ade.jpg', 1, 43);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/e5646e5fc09a01a9243979b229e0572b.jpg', 1, 44);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/fdb0d5fcfb86e332505785225a6d9ade.jpg', 1, 45);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/e5646e5fc09a01a9243979b229e0572b.jpg', 1, 46);


insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg', 0, 41);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg', 0, 42);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg', 0, 43);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg', 0, 44);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg', 0, 45);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg', 0, 46);

insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg', 0, 41);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg', 0, 42);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg', 0, 43);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg', 0, 44);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg', 0, 45);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg', 0, 46);

insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg', 0, 41);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg', 0, 42);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg', 0, 43);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg', 0, 44);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg', 0, 45);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg', 0, 46);

insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg', 0, 41);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg', 0, 42);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg', 0, 43);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg', 0, 44);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg', 0, 45);
insert into image(url, top, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg', 0, 46);



-- -----------------------------------------------------
-- detail image for best
-- -----------------------------------------------------
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg', 1);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg', 1);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg', 1);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg', 1);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg', 1);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg', 1);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg', 1);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg', 1);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg', 1);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/c0dd6887c9d9368604fc70d7fc3c4598.jpg', 1);

insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg', 2);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg', 2);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg', 2);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg', 2);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg', 2);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg', 2);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg', 2);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg', 2);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg', 2);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/c0dd6887c9d9368604fc70d7fc3c4598.jpg', 2);

insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg', 3);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg', 3);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg', 3);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg', 3);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg', 3);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg', 3);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg', 3);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg', 3);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg', 3);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/c0dd6887c9d9368604fc70d7fc3c4598.jpg', 3);

insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg', 4);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg', 4);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg', 4);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg', 4);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg', 4);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg', 4);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg', 4);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg', 4);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg', 4);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/c0dd6887c9d9368604fc70d7fc3c4598.jpg', 4);

insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg', 5);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg', 5);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg', 5);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg', 5);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg', 5);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg', 5);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg', 5);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg', 5);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg', 5);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/c0dd6887c9d9368604fc70d7fc3c4598.jpg', 5);

insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg', 6);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg', 6);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg', 6);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg', 6);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg', 6);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg', 6);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg', 6);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg', 6);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg', 6);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/c0dd6887c9d9368604fc70d7fc3c4598.jpg', 6);

insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg', 7);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg', 7);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg', 7);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg', 7);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg', 7);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg', 7);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg', 7);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg', 7);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg', 7);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/c0dd6887c9d9368604fc70d7fc3c4598.jpg', 7);

insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg', 8);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg', 8);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg', 8);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg', 8);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg', 8);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg', 8);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg', 8);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg', 8);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg', 8);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/c0dd6887c9d9368604fc70d7fc3c4598.jpg', 8);

insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg', 9);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg', 9);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg', 9);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg', 9);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg', 9);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg', 9);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg', 9);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg', 9);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg', 9);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/c0dd6887c9d9368604fc70d7fc3c4598.jpg', 9);

insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg', 10);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg', 10);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg', 10);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg', 10);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg', 10);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg', 10);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg', 10);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg', 10);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg', 10);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/c0dd6887c9d9368604fc70d7fc3c4598.jpg', 10);

insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg', 11);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg', 11);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg', 11);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg', 11);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg', 11);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg', 11);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg', 11);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg', 11);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg', 11);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/c0dd6887c9d9368604fc70d7fc3c4598.jpg', 11);

insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg', 12);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg', 12);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg', 12);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg', 12);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg', 12);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg', 12);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg', 12);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg', 12);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg', 12);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/c0dd6887c9d9368604fc70d7fc3c4598.jpg', 12);

insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg', 13);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg', 13);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg', 13);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg', 13);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg', 13);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg', 13);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg', 13);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg', 13);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg', 13);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/c0dd6887c9d9368604fc70d7fc3c4598.jpg', 13);

insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg', 14);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg', 14);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg', 14);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg', 14);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg', 14);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg', 14);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg', 14);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg', 14);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg', 14);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/c0dd6887c9d9368604fc70d7fc3c4598.jpg', 14);

insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg', 15);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg', 15);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg', 15);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg', 15);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg', 15);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg', 15);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg', 15);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg', 15);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg', 15);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/c0dd6887c9d9368604fc70d7fc3c4598.jpg', 15);

insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg', 16);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg', 16);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg', 16);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg', 16);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg', 16);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg', 16);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg', 16);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg', 16);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg', 16);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/c0dd6887c9d9368604fc70d7fc3c4598.jpg', 16);

insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg', 17);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg', 17);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg', 17);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg', 17);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg', 17);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg', 17);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg', 17);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg', 17);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg', 17);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/c0dd6887c9d9368604fc70d7fc3c4598.jpg', 17);

insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg', 18);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg', 18);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg', 18);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg', 18);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg', 18);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg', 18);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg', 18);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg', 18);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg', 18);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/c0dd6887c9d9368604fc70d7fc3c4598.jpg', 18);

insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg', 19);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg', 19);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg', 19);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg', 19);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg', 19);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg', 19);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg', 19);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg', 19);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg', 19);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/c0dd6887c9d9368604fc70d7fc3c4598.jpg', 19);

insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg', 20);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg', 20);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg', 20);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg', 20);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg', 20);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg', 20);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg', 20);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg', 20);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg', 20);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/c0dd6887c9d9368604fc70d7fc3c4598.jpg', 20);

insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg', 21);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg', 21);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg', 21);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg', 21);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg', 21);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg', 21);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg', 21);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg', 21);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg', 21);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/c0dd6887c9d9368604fc70d7fc3c4598.jpg', 21);

insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg', 22);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg', 22);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg', 22);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg', 22);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg', 22);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg', 22);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg', 22);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg', 22);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg', 22);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/c0dd6887c9d9368604fc70d7fc3c4598.jpg', 22);

insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg', 23);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg', 23);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg', 23);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg', 23);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg', 23);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg', 23);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg', 23);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg', 23);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg', 23);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/c0dd6887c9d9368604fc70d7fc3c4598.jpg', 23);

insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg', 24);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg', 24);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg', 24);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg', 24);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg', 24);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg', 24);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg', 24);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg', 24);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg', 24);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/c0dd6887c9d9368604fc70d7fc3c4598.jpg', 24);

insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg', 25);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg', 25);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg', 25);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg', 25);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg', 25);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg', 25);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg', 25);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg', 25);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg', 25);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/c0dd6887c9d9368604fc70d7fc3c4598.jpg', 25);

insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg', 26);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg', 26);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg', 26);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg', 26);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg', 26);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg', 26);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg', 26);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg', 26);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg', 26);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/c0dd6887c9d9368604fc70d7fc3c4598.jpg', 26);

insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg', 27);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg', 27);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg', 27);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg', 27);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg', 27);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg', 27);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg', 27);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg', 27);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg', 27);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/c0dd6887c9d9368604fc70d7fc3c4598.jpg', 27);

insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg', 28);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg', 28);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg', 28);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg', 28);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg', 28);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg', 28);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg', 28);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg', 28);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg', 28);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/c0dd6887c9d9368604fc70d7fc3c4598.jpg', 28);

insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg', 29);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg', 29);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg', 29);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg', 29);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg', 29);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg', 29);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg', 29);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg', 29);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg', 29);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/c0dd6887c9d9368604fc70d7fc3c4598.jpg', 29);

insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg', 30);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg', 30);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg', 30);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg', 30);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg', 30);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg', 30);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg', 30);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg', 30);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg', 30);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/c0dd6887c9d9368604fc70d7fc3c4598.jpg', 30);

insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg', 31);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg', 31);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg', 31);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg', 31);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg', 31);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg', 31);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg', 31);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg', 31);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg', 31);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/c0dd6887c9d9368604fc70d7fc3c4598.jpg', 31);

insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg', 32);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg', 32);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg', 32);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg', 32);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg', 32);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg', 32);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg', 32);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg', 32);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg', 32);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/c0dd6887c9d9368604fc70d7fc3c4598.jpg', 32);

insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg', 33);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg', 33);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg', 33);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg', 33);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg', 33);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg', 33);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg', 33);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg', 33);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg', 33);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/c0dd6887c9d9368604fc70d7fc3c4598.jpg', 33);

insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg', 34);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg', 34);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg', 34);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg', 34);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg', 34);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg', 34);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg', 34);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg', 34);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg', 34);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/c0dd6887c9d9368604fc70d7fc3c4598.jpg', 34);

insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg', 35);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg', 35);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg', 35);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg', 35);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg', 35);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg', 35);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg', 35);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg', 35);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg', 35);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/c0dd6887c9d9368604fc70d7fc3c4598.jpg', 35);

insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg', 36);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg', 36);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg', 36);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg', 36);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg', 36);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg', 36);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg', 36);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg', 36);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg', 36);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/c0dd6887c9d9368604fc70d7fc3c4598.jpg', 36);

insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg', 37);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg', 37);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg', 37);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg', 37);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg', 37);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg', 37);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg', 37);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg', 37);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg', 37);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/c0dd6887c9d9368604fc70d7fc3c4598.jpg', 37);

insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg', 38);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg', 38);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg', 38);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg', 38);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg', 38);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg', 38);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg', 38);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg', 38);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg', 38);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/c0dd6887c9d9368604fc70d7fc3c4598.jpg', 38);

insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg', 39);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg', 39);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg', 39);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg', 39);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg', 39);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg', 39);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg', 39);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg', 39);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg', 39);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/c0dd6887c9d9368604fc70d7fc3c4598.jpg', 39);

insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg', 40);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg', 40);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg', 40);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg', 40);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg', 40);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg', 40);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg', 40);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg', 40);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg', 40);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/c0dd6887c9d9368604fc70d7fc3c4598.jpg', 40);

insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg', 41);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg', 41);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg', 41);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg', 41);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg', 41);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg', 41);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg', 41);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg', 41);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg', 41);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/c0dd6887c9d9368604fc70d7fc3c4598.jpg', 41);

insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg', 42);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg', 42);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg', 42);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg', 42);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg', 42);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg', 42);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg', 42);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg', 42);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg', 42);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/c0dd6887c9d9368604fc70d7fc3c4598.jpg', 42);

insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg', 43);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg', 43);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg', 43);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg', 43);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg', 43);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg', 43);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg', 43);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg', 43);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg', 43);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/c0dd6887c9d9368604fc70d7fc3c4598.jpg', 43);

insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg', 44);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg', 44);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg', 44);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg', 44);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg', 44);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg', 44);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg', 44);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg', 44);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg', 44);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/c0dd6887c9d9368604fc70d7fc3c4598.jpg', 44);

insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg', 45);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg', 45);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg', 45);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg', 45);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg', 45);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg', 45);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg', 45);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg', 45);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg', 45);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/c0dd6887c9d9368604fc70d7fc3c4598.jpg', 45);

insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg', 46);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg', 46);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg', 46);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg', 46);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg', 46);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg', 46);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg', 46);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg', 46);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg', 46);
insert into detail_image(url, dish_id) values ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/c0dd6887c9d9368604fc70d7fc3c4598.jpg', 46);
