INSERT INTO dish(hash, top_image, title, description, normal_price, special_price, section_name, stock) VALUES('H9881', 'https://cdn.bmf.kr/_data/product/H9881/910a01a81c49cb75414edb759237501f.jpg', '[소중한식사] 경상도 한상차림', '경상도 명물 요리 세 가지를 한 상에!', 39000, 31200, NULL, 10);
INSERT INTO dish(hash, top_image, title, description, normal_price, special_price, section_name, stock) VALUES('HDF4C', 'imageurl', '[딩고] 시그니처 3종 SET', '오늘 저녁은 이상하게 안주빨을 세워보고 싶다!', 32800, 24000, NULL, 10.);
INSERT INTO dish(hash, top_image, title, description, normal_price, special_price, section_name, stock) VALUES('H7F20', 'imageurl', '[집밥의완성]초여름보양세트', '무더위에 대비하는 6월 한상차림 초여름 보양세트', 26000, 18200, NULL, 10);


INSERT INTO dish(hash, top_image, title, description, normal_price, special_price, section_name, stock) VALUES('HBDEF', 'imageurl', '[미노리키친] 규동 250g', '일본인의 소울푸드! 한국인도 좋아하는 소고기덮밥', 6500, 5200, 'main,course', 10);

INSERT INTO dish(hash, top_image, title, description, normal_price, special_price, section_name, stock) VALUES('HDF73', 'imageurl', '[빅마마의밥친구] 아삭 고소한 연근고기조림 250g', '편식하는 아이도 좋아하는 건강한 연근조림', 0, 5500, 'main,soup', 10);
INSERT INTO dish(hash, top_image, title, description, normal_price, special_price, section_name, stock) VALUES('HF778', 'imageurl', '[소중한식사] 골뱅이무침 195g', '매콤새콤달콤, 반찬으로도 안주로도 좋은', 7000, 6300, 'main', 10);

INSERT INTO event(id, badge, dish_hash) VALUES (1, '런칭특가', 'HBDEF');
INSERT INTO event(id, badge, dish_hash) VALUES (2, '이벤트특가', 'HBDEF');
INSERT INTO event(id, badge, dish_hash) VALUES (3, '이벤트특가', 'HDF73');

INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (1, 'https://cdn.bmf.kr/_data/product/HDF4C/a5f8637df5a375e3105c12b6efd47538.jpg','H9881', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (2, 'https://cdn.bmf.kr/_data/product/HDF4C/6cca5e7533981795c6d9f2744bfc78c0.jpg','H9881', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (3, 'https://cdn.bmf.kr/_data/product/HDF4C/a3972e617da696c157a8bef56fd3c277.jpg','H9881', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (4, 'https://cdn.bmf.kr/_data/product/HDF4C/b68631d002e5302c7a3c3102cf429816.jpg','H9881', 1);

INSERT INTO delivery(id, is_monday, dish_hash) VALUES (1, 1, 'H9881');
INSERT INTO delivery(id, is_monday, dish_hash) VALUES (2, 1, 'HDF4C');
INSERT INTO delivery(id, is_monday, dish_hash) VALUES (3, 1, 'HBDEF');
INSERT INTO delivery(id, is_monday, dish_hash) VALUES (4, 0, 'HDF73');
INSERT INTO delivery(id, is_monday, dish_hash) VALUES (5, 0, 'HF778');
INSERT INTO delivery(id, is_monday, dish_hash) VALUES (6, 1, 'H7F20');


INSERT INTO best(category_id, name) VALUES (17011200, '할인특가 세트상품');
INSERT INTO best(category_id, name) VALUES (17011000, '풍성한 고기반');

INSERT INTO dish_best(dish_hash, category_id) VALUES ('H9881', 17011200);
INSERT INTO dish_best(dish_hash, category_id) VALUES ('HDF4C', 17011200);
INSERT INTO dish_best(dish_hash, category_id) VALUES ('HDF73', 17011000);
INSERT INTO dish_best(dish_hash, category_id) VALUES ('HF778', 17011000);