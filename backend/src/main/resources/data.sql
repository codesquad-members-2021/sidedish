-- main
-- HBDEF 1
INSERT INTO dish(hash, top_image, title, description, normal_price, special_price, section_name, stock)
VALUES('HBDEF', 'http://public.codesquad.kr/jk/storeapp/data/2d3f99a9a35601f4e98837bc4d39b2c8.jpg', '[미노리키친] 규동 250g', '일본인의 소울푸드! 한국인도 좋아하는 소고기덮밥', 7000, 6500, 'main', 10);
INSERT INTO event(id, badge, dish_hash) VALUES (1, '이벤트특가', 'HBDEF');
INSERT INTO delivery(id, is_monday, dish_hash) VALUES (1, 1, 'HBDEF');

INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (1, 'http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg','HBDEF', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (2, 'http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg','HBDEF', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (3, 'http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg','HBDEF', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (4, 'http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg','HBDEF', 1);

INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (5, 'http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg','HBDEF', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (6, 'http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg','HBDEF', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (7, 'http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg','HBDEF', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (8, 'http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg','HBDEF', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (9, 'http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg','HBDEF', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (10, 'http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg','HBDEF', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (11, 'http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg','HBDEF', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (12, 'http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg','HBDEF', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (13, 'http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg','HBDEF', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (14, 'http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/c0dd6887c9d9368604fc70d7fc3c4598.jpg','HBDEF', 0);


-- HDF73 2
INSERT INTO dish(hash, top_image, title, description, special_price, section_name, stock)
VALUES('HDF73', 'http://public.codesquad.kr/jk/storeapp/data/7674311a02ba7c88675f3186ddaeef9e.jpg', '[빅마마의밥친구] 아삭 고소한 연근고기조림 250g', '편식하는 아이도 좋아하는 건강한 연근조림', 5500, 'main', 10);
-- event x
INSERT INTO delivery(id, is_monday, dish_hash) VALUES (2, 0, 'HDF73');

INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (15, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0f95f44ea8e2e7930321def493753a48.jpg','HDF73', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (16, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/2d408898494ac950d7d2cfd6c36d59c2.jpg','HDF73', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (17, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/62c8bb77facfc9c3be81f9bf45b27f2a.jpg','HDF73', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (18, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/f6d73afc0ebc1efa71eaea32e9d846f2.jpg','HDF73', 1);

INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (19, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg','HDF73', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (20, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/5f73c5c80b62ef63c8a8eecefe32fc29.jpg','HDF73', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (21, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg','HDF73', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (22, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0253cdebc4972fefd6b94458024fe765.jpg','HDF73', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (23, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/3299da0677b50c8c519adc0335271c49.jpg','HDF73', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (24, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0642265b65dcc2490ab164ff428cbfe2.jpg','HDF73', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (25, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/695683493c1ae475a175475f50d3259f.jpg','HDF73', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (26, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/c8f9bed4f5c07585b869e3d171904a93.jpg','HDF73', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (27, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d2e3274c95c832bc9bfbcebbd548f61b.jpg','HDF73', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (28, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d9e4fa00652483d74b46317d38159a2f.jpg','HDF73', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (29, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d7799b67683128642453f9e2b4c8ce84.jpg','HDF73', 0);


-- HF778 3
INSERT INTO dish(hash, top_image, title, description, normal_price, special_price, section_name, stock)
VALUES('HF778', 'http://public.codesquad.kr/jk/storeapp/data/cad8eee316cf7151e07638aa57b32a9d.jpg', '[소중한식사] 골뱅이무침 195g', '매콤새콤달콤, 반찬으로도 안주로도 좋은', 7000, 6300, 'main', 10);
INSERT INTO event(id, badge, dish_hash) VALUES (2, '이벤트특가', 'HF778');
INSERT INTO delivery(id, is_monday, dish_hash) VALUES (3, 0, 'HF778');

INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (30, 'http://public.codesquad.kr/jk/storeapp/data/cad8eee316cf7151e07638aa57b32a9d.jpg','HF778', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (31, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/2d408898494ac950d7d2cfd6c36d59c2.jpg','HF778', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (32, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/62c8bb77facfc9c3be81f9bf45b27f2a.jpg','HF778', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (33, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/f6d73afc0ebc1efa71eaea32e9d846f2.jpg','HF778', 1);

INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (34, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg','HF778', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (35, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/5f73c5c80b62ef63c8a8eecefe32fc29.jpg','HF778', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (36, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg','HF778', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (37, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0253cdebc4972fefd6b94458024fe765.jpg','HF778', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (38, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/3299da0677b50c8c519adc0335271c49.jpg','HF778', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (39, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0642265b65dcc2490ab164ff428cbfe2.jpg','HF778', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (40, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/695683493c1ae475a175475f50d3259f.jpg','HF778', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (41, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/c8f9bed4f5c07585b869e3d171904a93.jpg','HF778', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (42, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d2e3274c95c832bc9bfbcebbd548f61b.jpg','HF778', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (43, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d9e4fa00652483d74b46317d38159a2f.jpg','HF778', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (44, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d7799b67683128642453f9e2b4c8ce84.jpg','HF778', 0);

-- HFB53 4
INSERT INTO dish(hash, top_image, title, description, special_price, section_name, stock)
VALUES('HFB53', 'http://public.codesquad.kr/jk/storeapp/data/b6beada6b89af950289003d929936d9c.jpg', '[옹가솜씨] 꽁치간장조림 240g', '생강 향이 산뜻한', 5800, 'main', 10);
-- event x
INSERT INTO delivery(id, is_monday, dish_hash) VALUES (4, 1, 'HFB53');

INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (45, 'http://public.codesquad.kr/jk/storeapp/data/b6beada6b89af950289003d929936d9c.jpg','HFB53', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (46, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/2d408898494ac950d7d2cfd6c36d59c2.jpg','HFB53', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (47, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/62c8bb77facfc9c3be81f9bf45b27f2a.jpg','HFB53', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (48, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/f6d73afc0ebc1efa71eaea32e9d846f2.jpg','HFB53', 1);

INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (49, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg','HFB53', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (50, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/5f73c5c80b62ef63c8a8eecefe32fc29.jpg','HFB53', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (51, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg','HFB53', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (52, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0253cdebc4972fefd6b94458024fe765.jpg','HFB53', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (53, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/3299da0677b50c8c519adc0335271c49.jpg','HFB53', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (54, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0642265b65dcc2490ab164ff428cbfe2.jpg','HFB53', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (55, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/695683493c1ae475a175475f50d3259f.jpg','HFB53', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (56, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/c8f9bed4f5c07585b869e3d171904a93.jpg','HFB53', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (57, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d2e3274c95c832bc9bfbcebbd548f61b.jpg','HFB53', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (58, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d9e4fa00652483d74b46317d38159a2f.jpg','HFB53', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (59, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d7799b67683128642453f9e2b4c8ce84.jpg','HFB53', 0);




-- H077F 5
INSERT INTO dish(hash, top_image, title, description, normal_price, special_price, section_name, stock)
VALUES('H077F', 'http://public.codesquad.kr/jk/storeapp/data/0221110ead70dfd455e40703bbdd6252.jpg', '[마더앤찬] 코다리구이 320g', '큼지막하고 살집 많은 동태 한 마리로 만든 코다리구이입니다.', 7500, 6750, 'main', 10);
INSERT INTO event(id, badge, dish_hash) VALUES (3, '론칭특가', 'H077F');
INSERT INTO delivery(id, is_monday, dish_hash) VALUES (5, 1, 'H077F');

INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (60, 'http://public.codesquad.kr/jk/storeapp/data/0221110ead70dfd455e40703bbdd6252.jpg','H077F', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (61, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/2d408898494ac950d7d2cfd6c36d59c2.jpg','H077F', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (62, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/62c8bb77facfc9c3be81f9bf45b27f2a.jpg','H077F', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (63, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/f6d73afc0ebc1efa71eaea32e9d846f2.jpg','H077F', 1);

INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (64, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg','H077F', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (65, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/5f73c5c80b62ef63c8a8eecefe32fc29.jpg','H077F', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (66, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg','H077F', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (67, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0253cdebc4972fefd6b94458024fe765.jpg','H077F', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (68, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/3299da0677b50c8c519adc0335271c49.jpg','H077F', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (69, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0642265b65dcc2490ab164ff428cbfe2.jpg','H077F', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (70, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/695683493c1ae475a175475f50d3259f.jpg','H077F', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (71, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/c8f9bed4f5c07585b869e3d171904a93.jpg','H077F', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (72, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d2e3274c95c832bc9bfbcebbd548f61b.jpg','H077F', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (73, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d9e4fa00652483d74b46317d38159a2f.jpg','H077F', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (74, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d7799b67683128642453f9e2b4c8ce84.jpg','H077F', 0);

-- H4665 6
INSERT INTO dish(hash, top_image, title, description, special_price, section_name, stock)
VALUES('H4665', 'http://public.codesquad.kr/jk/storeapp/data/385f4106ac26f6e4fe7c640714f405a5.jpg', '[남도애꽃] 반건조 문어조림 120g', '씹을수록 감칠맛나는 문어살의 쫄깃함', 4600, 'main', 10);
-- event x
INSERT INTO delivery(id, is_monday, dish_hash) VALUES (6, 0, 'H4665');

INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (75, 'http://public.codesquad.kr/jk/storeapp/data/385f4106ac26f6e4fe7c640714f405a5.jpg', 'H4665', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (76, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/2d408898494ac950d7d2cfd6c36d59c2.jpg','H4665', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (77, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/62c8bb77facfc9c3be81f9bf45b27f2a.jpg','H4665', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (78, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/f6d73afc0ebc1efa71eaea32e9d846f2.jpg','H4665', 1);

INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (79, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg','H4665', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (80, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/5f73c5c80b62ef63c8a8eecefe32fc29.jpg','H4665', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (81, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg','H4665', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (82, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0253cdebc4972fefd6b94458024fe765.jpg','H4665', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (83, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/3299da0677b50c8c519adc0335271c49.jpg','H4665', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (84, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0642265b65dcc2490ab164ff428cbfe2.jpg','H4665', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (85, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/695683493c1ae475a175475f50d3259f.jpg','H4665', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (86, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/c8f9bed4f5c07585b869e3d171904a93.jpg','H4665', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (87, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d2e3274c95c832bc9bfbcebbd548f61b.jpg','H4665', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (88, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d9e4fa00652483d74b46317d38159a2f.jpg','H4665', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (89, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d7799b67683128642453f9e2b4c8ce84.jpg','H4665', 0);


-- H1AA9 7
INSERT INTO dish(hash, top_image, title, description, normal_price, special_price, section_name, stock)
VALUES('H1AA9', 'http://public.codesquad.kr/jk/storeapp/data/2455226945d52f5aefd51f35d663bb16.jpg', '[마샐미디쉬] 매콤마늘쫑 해산물볶음 180g', '탱글탱글한 새우와 오징어를 마늘쫑과 함께 매콤하게 볶아냈어요.', 6900, 6210, 'main', 10);
INSERT INTO event(id, badge, dish_hash) VALUES (4, '론칭특가', 'H1AA9');
INSERT INTO delivery(id, is_monday, dish_hash) VALUES (7, 1, 'H1AA9');

INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (90, 'http://public.codesquad.kr/jk/storeapp/data/2455226945d52f5aefd51f35d663bb16.jpg','H1AA9', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (91, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/2d408898494ac950d7d2cfd6c36d59c2.jpg','H1AA9', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (92, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/62c8bb77facfc9c3be81f9bf45b27f2a.jpg','H1AA9', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (93, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/f6d73afc0ebc1efa71eaea32e9d846f2.jpg','H1AA9', 1);

INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (94, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg','H1AA9', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (95, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/5f73c5c80b62ef63c8a8eecefe32fc29.jpg','H1AA9', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (96, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg','H1AA9', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (97, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0253cdebc4972fefd6b94458024fe765.jpg','H1AA9', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (98, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/3299da0677b50c8c519adc0335271c49.jpg','H1AA9', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (99, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0642265b65dcc2490ab164ff428cbfe2.jpg','H1AA9', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (100, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/695683493c1ae475a175475f50d3259f.jpg','H1AA9', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (101, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/c8f9bed4f5c07585b869e3d171904a93.jpg','H1AA9', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (102, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d2e3274c95c832bc9bfbcebbd548f61b.jpg','H1AA9', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (103, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d9e4fa00652483d74b46317d38159a2f.jpg','H1AA9', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (104, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d7799b67683128642453f9e2b4c8ce84.jpg','H1AA9', 0);

-- HEDFB 8
INSERT INTO dish(hash, top_image, title, description, special_price, section_name, stock)
VALUES('HEDFB', 'http://public.codesquad.kr/jk/storeapp/data/bc3b777115e8377a48c7bd762fe5fdc9.jpg', '[빅마마의밥친구] 비빔오징어 150g', '달콤한 신야초발효액이 포인트!', 5000, 'main', 10);
-- event x
INSERT INTO delivery(id, is_monday, dish_hash) VALUES (8, 0, 'HEDFB');

INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (105, 'http://public.codesquad.kr/jk/storeapp/data/2455226945d52f5aefd51f35d663bb16.jpg','HEDFB', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (106, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/2d408898494ac950d7d2cfd6c36d59c2.jpg','HEDFB', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (107, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/62c8bb77facfc9c3be81f9bf45b27f2a.jpg','HEDFB', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (108, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/f6d73afc0ebc1efa71eaea32e9d846f2.jpg','HEDFB', 1);

INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (109, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg','HEDFB', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (110, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/5f73c5c80b62ef63c8a8eecefe32fc29.jpg','HEDFB', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (111, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg','HEDFB', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (112, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0253cdebc4972fefd6b94458024fe765.jpg','HEDFB', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (113, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/3299da0677b50c8c519adc0335271c49.jpg','HEDFB', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (114, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0642265b65dcc2490ab164ff428cbfe2.jpg','HEDFB', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (115, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/695683493c1ae475a175475f50d3259f.jpg','HEDFB', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (116, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/c8f9bed4f5c07585b869e3d171904a93.jpg','HEDFB', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (117, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d2e3274c95c832bc9bfbcebbd548f61b.jpg','HEDFB', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (118, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d9e4fa00652483d74b46317d38159a2f.jpg','HEDFB', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (119, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d7799b67683128642453f9e2b4c8ce84.jpg','HEDFB', 0);


-- soup
-- H72C3 1
INSERT INTO dish(hash, top_image, title, description, normal_price, special_price, section_name, stock)
VALUES('H72C3', 'http://public.codesquad.kr/jk/storeapp/data/d1fccf125f0a78113d0e06cb888f2e74.jpg', '[수하동] 특곰탕 850g', '100% 한우양지로 끓여낸 70년전통의 서울식곰탕', 15000, 14200, 'soup', 10);
INSERT INTO event(id, badge, dish_hash) VALUES (5, '이벤트특가', 'H72C3');
INSERT INTO delivery(id, is_monday, dish_hash) VALUES (9, 0, 'H72C3');

INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (120, 'http://public.codesquad.kr/jk/storeapp/data/d1fccf125f0a78113d0e06cb888f2e74.jpg','H72C3', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (121, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/92f556b605c4a84813070d7214c4f336.jpg','H72C3', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (122, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/538b8ab021c7814aa4af860d94f81287.jpg','H72C3', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (123, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/adaef08ab0680b087096afa0f0070fad.jpg','H72C3', 1);

INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (124, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/341b8605fa224ec1808c4f169097d170.jpg','H72C3', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (125, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/0228d4cb660a3cca06952917bd024dcb.jpg','H72C3', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (126, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/e027227f61a93b6473e8c4bbd5c3de74.jpg','H72C3', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (127, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/03ac0b09199421bb61727c667c2361f6.jpg','H72C3', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (128, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/cbe4a3e12b7bdba5cf410e0e19dcf1ca.jpg','H72C3', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (129, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/b58fa5791b67db106524b48442cb1c6a.jpg','H72C3', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (130, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/82cfe0332f0e1c927a23b79f1d152430.jpg','H72C3', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (131, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/390ca9ad5a574cbe7f3f6e26871f6690.jpg','H72C3', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (132, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/e113889a6120357c8e6196802a9f155b.jpg','H72C3', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (133, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/967e8e1ef357e9722b796e2bcb09ba3d.jpg','H72C3', 0);

-- HA6EE 2
INSERT INTO dish(hash, top_image, title, description, special_price, section_name, stock)
VALUES('HA6EE', 'http://public.codesquad.kr/jk/storeapp/data/c069bc32cb37727c59e1f0c2839311a0.jpg', '[빅마마의밥친구] 된장찌개 900g', '항아리에서 숙성시킨 집된장으로만 맛을내 짜지 않은 된장찌개', 10000, 'soup', 10);
-- event x
INSERT INTO delivery(id, is_monday, dish_hash) VALUES (10, 0, 'HA6EE');

INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (134, 'http://public.codesquad.kr/jk/storeapp/data/c069bc32cb37727c59e1f0c2839311a0.jpg','HA6EE', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (135, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/edc6bae2e2663f05b4e8eb5a2b95d68f.jpg','HA6EE', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (136, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/c935f5913dc66b11ebceeef85485c438.jpg','HA6EE', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (137, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/7c1e24867611394f04b37d05593e21ba.jpg','HA6EE', 1);

INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (138, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/670e7deefe1d84a4f4e058655fbd4d7c.jpg','HA6EE', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (139, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/1898cda038e92454395b8ffca8cd4393.jpg','HA6EE', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (140, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/49516d302dad870fbdd75cf98a01eae4.jpg','HA6EE', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (141, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/c1bb6fe4f72fcea27ea989ae48c61c86.jpg','HA6EE', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (142, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/49afed8d3ec417b39ce8de456fc6661c.jpg','HA6EE', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (143, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/e62762e63f3e12dc2857a065badf1eea.jpg','HA6EE', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (144, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/31103ab946bff52b709ec6891e768c05.jpg','HA6EE', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (145, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/f84dc16f4f6d97661bd13d587a72d6b1.jpg','HA6EE', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (146, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/fd3f49614f731a0610a5409c0deb3c60.jpg','HA6EE', 0);

-- H8CD0 3
INSERT INTO dish(hash, top_image, title, description, special_price, section_name, stock)
VALUES('H8CD0', 'http://public.codesquad.kr/jk/storeapp/data/f31fc3f5828c27ff60e4cf89a862d31c.jpg', '[탐나는밥상] 동태탕 1000g', '칼칼한 국물이 속 풀기에 딱 좋은 동태탕', 14000, 'soup', 10);
-- event x
INSERT INTO delivery(id, is_monday, dish_hash) VALUES (11, 0, 'H8CD0');

INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (147, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/4e96f386d5a5c4459bc0ac6ffd0c1fce.jpg','H8CD0', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (148, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/00327d0df92e29bad02e7387349bed53.jpg','H8CD0', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (149, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/781fea32c56eb102429902a2f62cbaf3.jpg','H8CD0', 1);

INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (150, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/829c8a3fb87d98ef42ae449215d4c8b7.jpg','H8CD0', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (151, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/25900d6f62866f25c024105e10907f43.png','H8CD0', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (152, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/e52f3fbd48fbe9ff2ac99759cacd0042.png','H8CD0', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (153, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/edd7a54096d6df1b8bc8b318cea0191c.jpg','H8CD0', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (154, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/fb8e6e21faa8284021c1b1c7a1ae1281.jpg','H8CD0', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (155, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/36a0566d2fb69a4bcea946727181836d.jpg','H8CD0', 0);


-- HE2E9 4
INSERT INTO dish(hash, top_image, title, description, normal_price, special_price, section_name, stock)
VALUES('HE2E9', 'http://public.codesquad.kr/jk/storeapp/data/6edbb16da52708e8533b85fbf743f882.jpg', '[국물닷컴] 치즈부대찌개 600g', '안주용 부대찌개와는 달라 밥말아먹기 딱 좋은', 5500, 4300, 'soup', 10);
INSERT INTO event(id, badge, dish_hash) VALUES (6, '이벤트특가', 'HE2E9');
INSERT INTO delivery(id, is_monday, dish_hash) VALUES (12, 1, 'HE2E9');

INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (156, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/4e96f386d5a5c4459bc0ac6ffd0c1fce.jpg','HE2E9', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (157, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/00327d0df92e29bad02e7387349bed53.jpg','HE2E9', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (158, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/781fea32c56eb102429902a2f62cbaf3.jpg','HE2E9', 1);

INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (159, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/829c8a3fb87d98ef42ae449215d4c8b7.jpg','HE2E9', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (160, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/25900d6f62866f25c024105e10907f43.png','HE2E9', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (161, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/e52f3fbd48fbe9ff2ac99759cacd0042.png','HE2E9', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (162, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/edd7a54096d6df1b8bc8b318cea0191c.jpg','HE2E9', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (163, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/fb8e6e21faa8284021c1b1c7a1ae1281.jpg','HE2E9', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (164, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/36a0566d2fb69a4bcea946727181836d.jpg','HE2E9', 0);


-- HAA47 5
INSERT INTO dish(hash, top_image, title, description, normal_price, special_price, section_name, stock)
VALUES('HAA47', 'http://public.codesquad.kr/jk/storeapp/data/892f3e7f043bfa7dbbcd58f88eecac36.jpg', '[집밥의완성] 스키야키 1.5kg (2~3인분)', '진한 풍미의 일본식 전골, 스키야키', 19800, 10000, 'soup', 10);
INSERT INTO event(id, badge, dish_hash) VALUES (7, '이벤트특가', 'HAA47');
INSERT INTO delivery(id, is_monday, dish_hash) VALUES (13, 1, 'HAA47');

INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (165, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/4e96f386d5a5c4459bc0ac6ffd0c1fce.jpg','HAA47', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (166, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/00327d0df92e29bad02e7387349bed53.jpg','HAA47', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (167, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/781fea32c56eb102429902a2f62cbaf3.jpg','HAA47', 1);

INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (168, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/829c8a3fb87d98ef42ae449215d4c8b7.jpg','HAA47', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (169, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/25900d6f62866f25c024105e10907f43.png','HAA47', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (170, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/e52f3fbd48fbe9ff2ac99759cacd0042.png','HAA47', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (171, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/edd7a54096d6df1b8bc8b318cea0191c.jpg','HAA47', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (172, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/fb8e6e21faa8284021c1b1c7a1ae1281.jpg','HAA47', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (173, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/36a0566d2fb69a4bcea946727181836d.jpg','HAA47', 0);


-- H3254 6
INSERT INTO dish(hash, top_image, title, description, normal_price, special_price, section_name, stock)
VALUES('H3254', 'http://public.codesquad.kr/jk/storeapp/data/ae571e13d18fd4f0f40d685d2c8fe8f1.jpg', '[새로미부산어묵] 프리미엄 어묵탕세트', '밀가루 0% 프리미엄 어묵에 어묵스프까지 드려요!', 18000, 14400, 'soup', 10);
INSERT INTO event(id, badge, dish_hash) VALUES (8, '론칭특가, 이벤트특가', 'H3254');
INSERT INTO delivery(id, is_monday, dish_hash) VALUES (14, 1, 'H3254');

INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (174, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/4e96f386d5a5c4459bc0ac6ffd0c1fce.jpg','H3254', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (175, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/00327d0df92e29bad02e7387349bed53.jpg','H3254', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (176, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/781fea32c56eb102429902a2f62cbaf3.jpg','H3254', 1);

INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (177, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/829c8a3fb87d98ef42ae449215d4c8b7.jpg','H3254', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (178, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/25900d6f62866f25c024105e10907f43.png','H3254', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (179, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/e52f3fbd48fbe9ff2ac99759cacd0042.png','H3254', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (180, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/edd7a54096d6df1b8bc8b318cea0191c.jpg','H3254', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (181, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/fb8e6e21faa8284021c1b1c7a1ae1281.jpg','H3254', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (182, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/36a0566d2fb69a4bcea946727181836d.jpg','H3254', 0);


-- H26C7 7
INSERT INTO dish(hash, top_image, title, description, normal_price, special_price, section_name, stock)
VALUES('H26C7', 'http://public.codesquad.kr/jk/storeapp/data/8fd330b5f5dbccbcbf4f5731e5e9e29b.jpg', '[모이세] 육개장 1팩(600g)', '제주3대해장국 맛집의 인기메뉴', 5900, 4400, 'soup', 10);
INSERT INTO event(id, badge, dish_hash) VALUES (10, '론칭특가', 'H26C7');
INSERT INTO delivery(id, is_monday, dish_hash) VALUES (15, 1, 'H26C7');

INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (183, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/2ad963a9f63d371826748c852a0025c3.jpg','H26C7', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (184, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/f945d8ac1dccc3f931bcaf35de5de582.jpg','H26C7', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (185, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/bacb0b8186371bfafbd92dbeec718e13.jpg','H26C7', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (186, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b96b02e9a956c6d5ad1e10eb14ba81e0.jpg','H26C7', 1);

INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (187, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/3d67aabd2751620367e1d1ac3e3d7ef2.jpg','H26C7', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (188, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/855b42b4e80162e6930f06aa80bd1272.jpg','H26C7', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (189, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/1966de56cf138639d5d50d4bf2db8e72.jpg','H26C7', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (190, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b3dd54082745d1188f3a6e582e7cd993.jpg','H26C7', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (191, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/4a6fd1fd1116c14aa6aef5e6851ab6a9.jpg','H26C7', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (192, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/7e12275d669102d0269278a7c91ab49d.jpg','H26C7', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (193, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/ab34ea3755f59a21662266eb62b7bc4b.jpg','H26C7', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (194, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b0a70ff59a3b5360b6246b507693c4d4.jpg','H26C7', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (195, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/dc772923b4a2e053f1baf68fa28a48ee.jpg','H26C7', 0);

-- HFFF9 8
INSERT INTO dish(hash, top_image, title, description, normal_price, special_price, section_name, stock)
VALUES('HFFF9', 'http://public.codesquad.kr/jk/storeapp/data/2416b58044d49f0d3a24256f8e76163b.jpg', '[마더앤찬] 명란감자국  630ml', '간간한 저염명란과 고소한 감자가 조화로운 국이에요', 7000, 6300, 'soup', 10);
INSERT INTO event(id, badge, dish_hash) VALUES (11, '론칭특가', 'HFFF9');
INSERT INTO delivery(id, is_monday, dish_hash) VALUES (16, 1, 'HFFF9');

INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (196, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/2ad963a9f63d371826748c852a0025c3.jpg','HFFF9', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (197, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/f945d8ac1dccc3f931bcaf35de5de582.jpg','HFFF9', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (198, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/bacb0b8186371bfafbd92dbeec718e13.jpg','HFFF9', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (199, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b96b02e9a956c6d5ad1e10eb14ba81e0.jpg','HFFF9', 1);

INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (200, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/3d67aabd2751620367e1d1ac3e3d7ef2.jpg','HFFF9', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (201, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/855b42b4e80162e6930f06aa80bd1272.jpg','HFFF9', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (202, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/1966de56cf138639d5d50d4bf2db8e72.jpg','HFFF9', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (203, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b3dd54082745d1188f3a6e582e7cd993.jpg','HFFF9', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (204, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/4a6fd1fd1116c14aa6aef5e6851ab6a9.jpg','HFFF9', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (205, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/7e12275d669102d0269278a7c91ab49d.jpg','HFFF9', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (206, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/ab34ea3755f59a21662266eb62b7bc4b.jpg','HFFF9', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (207, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b0a70ff59a3b5360b6246b507693c4d4.jpg','HFFF9', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (208, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/dc772923b4a2e053f1baf68fa28a48ee.jpg','HFFF9', 0);


-- side
-- HBBCC 1
INSERT INTO dish(hash, top_image, title, description, special_price, section_name, stock)
VALUES('HBBCC', 'http://public.codesquad.kr/jk/storeapp/data/fdb0d5fcfb86e332505785225a6d9ade.jpg', '[마샐미디쉬] 유자소스 연근무침 250g', '향긋한 유자향과 아삭한 연근', 6500, 'side', 10);
-- event x
INSERT INTO delivery(id, is_monday, dish_hash) VALUES (17, 1, 'HBBCC');

INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (209, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/2ad963a9f63d371826748c852a0025c3.jpg','HBBCC', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (210, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/f945d8ac1dccc3f931bcaf35de5de582.jpg','HBBCC', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (211, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/bacb0b8186371bfafbd92dbeec718e13.jpg','HBBCC', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (212, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b96b02e9a956c6d5ad1e10eb14ba81e0.jpg','HBBCC', 1);

INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (213, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/3d67aabd2751620367e1d1ac3e3d7ef2.jpg','HBBCC', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (214, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/855b42b4e80162e6930f06aa80bd1272.jpg','HBBCC', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (215, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/1966de56cf138639d5d50d4bf2db8e72.jpg','HBBCC', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (216, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b3dd54082745d1188f3a6e582e7cd993.jpg','HBBCC', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (217, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/4a6fd1fd1116c14aa6aef5e6851ab6a9.jpg','HBBCC', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (218, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/7e12275d669102d0269278a7c91ab49d.jpg','HBBCC', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (219, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/ab34ea3755f59a21662266eb62b7bc4b.jpg','HBBCC', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (220, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b0a70ff59a3b5360b6246b507693c4d4.jpg','HBBCC', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (221, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/dc772923b4a2e053f1baf68fa28a48ee.jpg','HBBCC', 0);


-- H1939 2
INSERT INTO dish(hash, top_image, title, description, special_price, section_name, stock)
VALUES('H1939', 'http://public.codesquad.kr/jk/storeapp/data/e5646e5fc09a01a9243979b229e0572b.jpg', '[동네부엌] 쇠고기야채장조림 200g', '부드러운 고기부터 밥비벼먹기 딱좋은 국물까지', 7400, 'side', 10);
-- event x
INSERT INTO delivery(id, is_monday, dish_hash) VALUES (18, 0, 'H1939');

INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (222, 'http://public.codesquad.kr/jk/storeapp/data/e5646e5fc09a01a9243979b229e0572b.jpg','H1939', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (223, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/f945d8ac1dccc3f931bcaf35de5de582.jpg','H1939', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (224, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/bacb0b8186371bfafbd92dbeec718e13.jpg','H1939', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (225, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b96b02e9a956c6d5ad1e10eb14ba81e0.jpg','H1939', 1);

INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (226, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/3d67aabd2751620367e1d1ac3e3d7ef2.jpg','H1939', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (227, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/855b42b4e80162e6930f06aa80bd1272.jpg','H1939', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (228, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/1966de56cf138639d5d50d4bf2db8e72.jpg','H1939', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (229, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b3dd54082745d1188f3a6e582e7cd993.jpg','H1939', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (230, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/4a6fd1fd1116c14aa6aef5e6851ab6a9.jpg','H1939', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (231, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/7e12275d669102d0269278a7c91ab49d.jpg','H1939', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (232, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/ab34ea3755f59a21662266eb62b7bc4b.jpg','H1939', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (233, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b0a70ff59a3b5360b6246b507693c4d4.jpg','H1939', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (234, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/dc772923b4a2e053f1baf68fa28a48ee.jpg','H1939', 0);

-- H8EA5 3
INSERT INTO dish(hash, top_image, title, description, special_price, section_name, stock)
VALUES('H8EA5', 'http://public.codesquad.kr/jk/storeapp/data/4cfd1954861ebd18b5b53e558a8e902e.jpg', '[소중한식사] 도라지초무침 150g', '새콤달콤 입맛 돋우는"', 4000, 'side', 10);
-- event x
INSERT INTO delivery(id, is_monday, dish_hash) VALUES (19, 0, 'H8EA5');

INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (235, 'http://public.codesquad.kr/jk/storeapp/data/4cfd1954861ebd18b5b53e558a8e902e.jpg','H8EA5', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (236, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/edc6bae2e2663f05b4e8eb5a2b95d68f.jpg','H8EA5', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (237, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/c935f5913dc66b11ebceeef85485c438.jpg','H8EA5', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (238, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/7c1e24867611394f04b37d05593e21ba.jpg','H8EA5', 1);

INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (240, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/670e7deefe1d84a4f4e058655fbd4d7c.jpg','H8EA5', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (241, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/1898cda038e92454395b8ffca8cd4393.jpg','H8EA5', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (242, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/49516d302dad870fbdd75cf98a01eae4.jpg','H8EA5', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (243, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/c1bb6fe4f72fcea27ea989ae48c61c86.jpg','H8EA5', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (244, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/49afed8d3ec417b39ce8de456fc6661c.jpg','H8EA5', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (245, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/e62762e63f3e12dc2857a065badf1eea.jpg','H8EA5', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (246, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/31103ab946bff52b709ec6891e768c05.jpg','H8EA5', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (247, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/f84dc16f4f6d97661bd13d587a72d6b1.jpg','H8EA5', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (248, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/fd3f49614f731a0610a5409c0deb3c60.jpg','H8EA5', 0);

-- H602F 4
INSERT INTO dish(hash, top_image, title, description, special_price, section_name, stock)
VALUES('H602F', 'http://public.codesquad.kr/jk/storeapp/data/422befe07f7e2860b9a83a8d7049ec2e.jpg', '[미노리키친] 일본식 우엉조림(킨피라고보) 80g', '한국식 우엉조림과는 다른 진한 감칠맛', 3300, 'side', 10);
-- event x
INSERT INTO delivery(id, is_monday, dish_hash) VALUES (20, 1, 'H602F');

INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (249, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/c8c8045696b4692107ef28c8b445ca42.jpg','H602F', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (250, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/edc6bae2e2663f05b4e8eb5a2b95d68f.jpg','H602F', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (251, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/c935f5913dc66b11ebceeef85485c438.jpg','H602F', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (252, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/7c1e24867611394f04b37d05593e21ba.jpg','H602F', 1);

INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (253, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/670e7deefe1d84a4f4e058655fbd4d7c.jpg','H602F', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (254, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/1898cda038e92454395b8ffca8cd4393.jpg','H602F', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (255, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/49516d302dad870fbdd75cf98a01eae4.jpg','H602F', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (256, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/c1bb6fe4f72fcea27ea989ae48c61c86.jpg','H602F', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (257, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/49afed8d3ec417b39ce8de456fc6661c.jpg','H602F', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (258, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/e62762e63f3e12dc2857a065badf1eea.jpg','H602F', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (259, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/31103ab946bff52b709ec6891e768c05.jpg','H602F', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (260, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/f84dc16f4f6d97661bd13d587a72d6b1.jpg','H602F', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (261, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/fd3f49614f731a0610a5409c0deb3c60.jpg','H602F', 0);

-- H9F0B 5
INSERT INTO dish(hash, top_image, title, description, special_price, section_name, stock)
VALUES('H9F0B', 'http://public.codesquad.kr/jk/storeapp/data/d0b5d2be962947d9534e2140d1b34b2d.jpg', '[빅마마의밥친구] 갈치포무침 150g', '쉽게 접할수 없는 꼬순내가득 갈치포 무침', 7000, 'side', 10);
-- event x
INSERT INTO delivery(id, is_monday, dish_hash) VALUES (21, 0, 'H9F0B');

INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (262, 'http://public.codesquad.kr/jk/storeapp/data/d0b5d2be962947d9534e2140d1b34b2d.jpg','H9F0B', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (263, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/edc6bae2e2663f05b4e8eb5a2b95d68f.jpg','H9F0B', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (264, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/c935f5913dc66b11ebceeef85485c438.jpg','H9F0B', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (316, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/7c1e24867611394f04b37d05593e21ba.jpg','H9F0B', 1);

INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (265, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/670e7deefe1d84a4f4e058655fbd4d7c.jpg','H9F0B', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (266, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/1898cda038e92454395b8ffca8cd4393.jpg','H9F0B', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (267, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/49516d302dad870fbdd75cf98a01eae4.jpg','H9F0B', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (268, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/c1bb6fe4f72fcea27ea989ae48c61c86.jpg','H9F0B', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (269, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/49afed8d3ec417b39ce8de456fc6661c.jpg','H9F0B', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (270, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/e62762e63f3e12dc2857a065badf1eea.jpg','H9F0B', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (271, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/31103ab946bff52b709ec6891e768c05.jpg','H9F0B', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (272, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/f84dc16f4f6d97661bd13d587a72d6b1.jpg','H9F0B', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (273, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/fd3f49614f731a0610a5409c0deb3c60.jpg','H9F0B', 0);

-- H0FC6 6
INSERT INTO dish(hash, top_image, title, description, normal_price, special_price, section_name, stock)
VALUES('H0FC6', 'http://public.codesquad.kr/jk/storeapp/data/f6817349118d4c671da8dca9065649a9.jpg', '[마더앤찬] 명란치즈계란말이 230g', '아이반찬으로 최고 계란말이', 4300, 3870, 'side', 10);
INSERT INTO event(id, badge, dish_hash) VALUES (12, '이벤트특가', 'H0FC6');
INSERT INTO delivery(id, is_monday, dish_hash) VALUES (22, 1, 'H0FC6');

INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (274, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/43c38eeffa556554c9b06301eb3e85b2.jpg','H0FC6', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (275, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/92f556b605c4a84813070d7214c4f336.jpg','H0FC6', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (276, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/538b8ab021c7814aa4af860d94f81287.jpg','H0FC6', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (277, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/adaef08ab0680b087096afa0f0070fad.jpg','H0FC6', 1);

INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (278, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/341b8605fa224ec1808c4f169097d170.jpg','H0FC6', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (279, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/0228d4cb660a3cca06952917bd024dcb.jpg','H0FC6', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (280, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/e027227f61a93b6473e8c4bbd5c3de74.jpg','H0FC6', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (281, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/03ac0b09199421bb61727c667c2361f6.jpg','H0FC6', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (282, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/cbe4a3e12b7bdba5cf410e0e19dcf1ca.jpg','H0FC6', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (283, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/b58fa5791b67db106524b48442cb1c6a.jpg','H0FC6', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (284, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/82cfe0332f0e1c927a23b79f1d152430.jpg','H0FC6', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (285, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/390ca9ad5a574cbe7f3f6e26871f6690.jpg','H0FC6', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (286, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/e113889a6120357c8e6196802a9f155b.jpg','H0FC6', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (287, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/967e8e1ef357e9722b796e2bcb09ba3d.jpg','H0FC6', 0);

-- HCCFE 7
INSERT INTO dish(hash, top_image, title, description, special_price, section_name, stock)
VALUES('HCCFE', 'http://public.codesquad.kr/jk/storeapp/data/757878b14ee5a8d5af905c154fc38f01.jpg', '[옹가솜씨] 달걀곤약조림 330g', '칼로리 부담 쭉쭉 내린', 5800, 'side', 10);
-- event x
INSERT INTO delivery(id, is_monday, dish_hash) VALUES (23, 1, 'HCCFE');

INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (288, 'http://public.codesquad.kr/jk/storeapp/data/757878b14ee5a8d5af905c154fc38f01.jpg','HCCFE', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (289, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/92f556b605c4a84813070d7214c4f336.jpg','HCCFE', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (290, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/538b8ab021c7814aa4af860d94f81287.jpg','HCCFE', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (291, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/adaef08ab0680b087096afa0f0070fad.jpg','HCCFE', 1);

INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (292, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/341b8605fa224ec1808c4f169097d170.jpg','HCCFE', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (293, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/0228d4cb660a3cca06952917bd024dcb.jpg','HCCFE', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (294, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/e027227f61a93b6473e8c4bbd5c3de74.jpg','HCCFE', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (295, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/03ac0b09199421bb61727c667c2361f6.jpg','HCCFE', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (296, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/cbe4a3e12b7bdba5cf410e0e19dcf1ca.jpg','HCCFE', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (297, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/b58fa5791b67db106524b48442cb1c6a.jpg','HCCFE', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (298, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/82cfe0332f0e1c927a23b79f1d152430.jpg','HCCFE', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (299, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/390ca9ad5a574cbe7f3f6e26871f6690.jpg','HCCFE', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (300, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/e113889a6120357c8e6196802a9f155b.jpg','HCCFE', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (301, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/967e8e1ef357e9722b796e2bcb09ba3d.jpg','HCCFE', 0);

-- HB9C1 8
INSERT INTO dish(hash, top_image, title, description, special_price, section_name, stock)
VALUES('HB9C1', 'http://public.codesquad.kr/jk/storeapp/data/043cf496f07899e7515f761e29d1ffa9.jpg', '[너의반찬] 미소된장 고추무침 200g', '고소한 양념 때문에 손이 자꾸 가요', 4500, 'side', 10);
-- event x
INSERT INTO delivery(id, is_monday, dish_hash) VALUES (24, 0, 'HB9C1');

INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (302, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/43c38eeffa556554c9b06301eb3e85b2.jpg','HB9C1', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (303, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/92f556b605c4a84813070d7214c4f336.jpg','HB9C1', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (304, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/538b8ab021c7814aa4af860d94f81287.jpg','HB9C1', 1);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (305, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/adaef08ab0680b087096afa0f0070fad.jpg','HB9C1', 1);

INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (306, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/341b8605fa224ec1808c4f169097d170.jpg','HB9C1', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (307, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/0228d4cb660a3cca06952917bd024dcb.jpg','HB9C1', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (308, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/e027227f61a93b6473e8c4bbd5c3de74.jpg','HB9C1', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (309, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/03ac0b09199421bb61727c667c2361f6.jpg','HB9C1', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (310, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/cbe4a3e12b7bdba5cf410e0e19dcf1ca.jpg','HB9C1', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (311, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/b58fa5791b67db106524b48442cb1c6a.jpg','HB9C1', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (312, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/82cfe0332f0e1c927a23b79f1d152430.jpg','HB9C1', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (313, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/390ca9ad5a574cbe7f3f6e26871f6690.jpg','HB9C1', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (314, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/e113889a6120357c8e6196802a9f155b.jpg','HB9C1', 0);
INSERT INTO image(id, image_url, dish_hash, is_thumb) VALUES (315, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/967e8e1ef357e9722b796e2bcb09ba3d.jpg','HB9C1', 0);



-- 할인특가 세트상품
INSERT INTO dish(hash, top_image, title, description, normal_price, special_price, section_name, stock)
VALUES('H9881', 'https://cdn.bmf.kr/_data/product/H9881/910a01a81c49cb75414edb759237501f.jpg', '[소중한식사] 경상도 한상차림', '경상도 명물 요리 세 가지를 한 상에!', 39000, 31200, NULL, 10);
INSERT INTO event(id, badge, dish_hash) VALUES (13, '이벤트특가', 'H9881');
INSERT INTO delivery(id, is_monday, dish_hash) VALUES (25, 0, 'H9881');

INSERT INTO dish(hash, top_image, title, description, normal_price, special_price, section_name, stock)
VALUES('HDF4C', 'image":"https://cdn.bmf.kr/_data/product/HDF4C/954b78f9111bbef54ede9fdcdf1298d8.jpg', '[딩고] 시그니처 3종 SET', '오늘 저녁은 이상하게 안주빨을 세워보고 싶다!', 32800, 24000, NULL, 10);
INSERT INTO event(id, badge, dish_hash) VALUES (14, '이벤트특가', 'HDF4C');
INSERT INTO delivery(id, is_monday, dish_hash) VALUES (26, 1, 'HDF4C');

INSERT INTO dish(hash, top_image, title, description, normal_price, special_price, section_name, stock)
VALUES('H7F20', 'https://cdn.bmf.kr/_data/product/H7F20/dc164f934d614469d097ccd0cd57cb5e.jpg', '[집밥의완성]초여름보양세트', '무더위에 대비하는 6월 한상차림 초여름 보양세트', 26000, 18200, NULL, 10);
INSERT INTO event(id, badge, dish_hash) VALUES (15, '이벤트특가', 'H7F20');
INSERT INTO delivery(id, is_monday, dish_hash) VALUES (27, 1, 'H7F20');

-- 풍성한 고기반찬
INSERT INTO dish(hash, top_image, title, description, normal_price, special_price, section_name, stock)
VALUES('HA567', 'https://cdn.bmf.kr/_data/product/HA567/a5bbaa6bfb727030345f26ca9afe27c5.jpg', '[아내의쉐프] 아쉐찜닭', '아내의쉐프가 자신 있게 만들어서 이름도 ''아쉐찜닭''입니다!', 11900, 10700, NULL, 10);
INSERT INTO event(id, badge, dish_hash) VALUES (16, '이벤트특가, 론칭특가', 'HA567');
INSERT INTO delivery(id, is_monday, dish_hash) VALUES (28, 0, 'HA567');

INSERT INTO dish(hash, top_image, title, description, special_price, section_name, stock)
VALUES('H206E', 'https://cdn.bmf.kr/_data/product/H206E/325c7aeb1673ffe58052463d93e407b8.jpg', '[애슐리투고] 로스트 콤보 450g', '립과 치킨이 만나  더욱 맛있게', 10900, NULL, 10);
INSERT INTO event(id, badge, dish_hash) VALUES (18, '론칭특가', 'H206E');
INSERT INTO delivery(id, is_monday, dish_hash) VALUES (29, 1, 'H206E');

INSERT INTO dish(hash, top_image, title, description, normal_price, special_price, section_name, stock)
VALUES('H75A2', 'https://cdn.bmf.kr/_data/product/H75A2/f0d1fade9f7d16e7e33211a26c3aa469.jpg', '[한옥집]소갈비김치찜 2인분', '부드러운 소갈비와 함께 푹 쪄낸 김치찜!', 16500, 14850, NULL, 10);
INSERT INTO event(id, badge, dish_hash) VALUES (19, '이벤트특가', 'H75A2');
INSERT INTO delivery(id, is_monday, dish_hash) VALUES (30, 1, 'H75A2');

-- 편리한 반찬세트
INSERT INTO dish(hash, top_image, title, description, special_price, section_name, stock)
VALUES('E055F', 'https://cdn.bmf.kr/_data/product/201410/13/b8b0a0aba3386f030155b6cb0c1c75fa.jpg', '[동네부엌] 사계절 건강식단 작은상', '마포엄마들이 사랑해온 건강반찬', 24000, NULL, 10);
INSERT INTO event(id, badge, dish_hash) VALUES (20, '베스트', 'E055F');
INSERT INTO delivery(id, is_monday, dish_hash) VALUES (31, 0, 'E055F');

INSERT INTO dish(hash, top_image, title, description, special_price, section_name, stock)
VALUES('FDAEB', 'https://cdn.bmf.kr/_data/product/201511/04/35365307dba3c23028a55027b29e88c9.jpg', '[집밥의완성] 한상 가득 세트 (3~4인)', '식단 정기배송으로 반찬고민 끝', 32000, NULL, 10);
INSERT INTO event(id, badge, dish_hash) VALUES (21, '베스트', 'FDAEB');
INSERT INTO delivery(id, is_monday, dish_hash) VALUES (32, 1, 'FDAEB');

INSERT INTO dish(hash, top_image, title, description, normal_price, special_price, section_name, stock)
VALUES('H762E', 'https://cdn.bmf.kr/_data/product/H762E/03cfe3d522df7451ca09ff1e0eede530.jpg', '[옹가솜씨] 한끼뚝딱세트', '한 세트만 있으면 한 끼 뚝딱', 19500, 17500, NULL, 10);
INSERT INTO event(id, badge, dish_hash) VALUES (22, '이벤트특가', 'H762E');
INSERT INTO delivery(id, is_monday, dish_hash) VALUES (33, 1, 'H762E');

-- 간편한 덮밥요리
INSERT INTO dish(hash, top_image, title, description, special_price, section_name, stock)
VALUES('H05FB', 'https://cdn.bmf.kr/_data/product/H05FB/6ff744c6f36ba437a4f8b9e9a000b0b1.jpg', '[옹가솜씨] 소고기쩜짜장 280g', '짜장의 착한 변신', 7200, NULL, 10);
-- event x
INSERT INTO delivery(id, is_monday, dish_hash) VALUES (34, 1, 'H05FB');

INSERT INTO dish(hash, top_image, title, description, normal_price, special_price, section_name, stock)
VALUES('H0699', 'https://cdn.bmf.kr/_data/product/H0699/295db179a21edac9aad382686cb80be8.jpg', '[무명식당]뿌리채소비빔밥 2인분', '각종 뿌리채소를 듬뿍 넣어 지은 뿌리채소영양밥', 5000, 4750, NULL, 10);
INSERT INTO event(id, badge, dish_hash) VALUES (23, '이벤트특가', 'H0699');
INSERT INTO delivery(id, is_monday, dish_hash) VALUES (35, 1, 'H0699');
--
-- INSERT INTO dish(hash, top_image, title, description, normal_price, special_price, section_name, stock)
-- VALUES('HBDEF', 'https://cdn.bmf.kr/_data/product/HBDEF/289b0fb6c14d2c8cd161205f8dadfa7a.jpg', '[미노리키친] 규동 250g', '일본인의 소울푸드! 한국인도 좋아하는 소고기덮밥', 6500, 5200, NULL, 10);
-- INSERT INTO event(id, badge, dish_hash) VALUES (24, '이벤트특가', 'HBDEF');
-- INSERT INTO delivery(id, is_monday, dish_hash) VALUES (36, 1, 'HBDEF');

-- 우리아이 영양반찬
INSERT INTO dish(hash, top_image, title, description, special_price, section_name, stock)
VALUES('H82A2', 'https://cdn.bmf.kr/_data/product/H82A2/a43eaf448c21906cd1300735fa9dd7a1.jpg', '[빅마마의밥친구] 입맛감각 살려주는 유부토마토조림 200g', '아이반찬과 다이어트 반찬으로 일석이조!', 4900, NULL, 10);
INSERT INTO delivery(id, is_monday, dish_hash) VALUES (37, 0, 'H82A2');

INSERT INTO dish(hash, top_image, title, description, special_price, section_name, stock)
VALUES('H213E', 'https://cdn.bmf.kr/_data/product/H213E/2895aa13fce2c5721f210080a2429562.jpg', '[동네부엌] 수제미트볼조림 300g', '재료부터 다른 수제미트볼조림', 8700, NULL, 10);
INSERT INTO delivery(id, is_monday, dish_hash) VALUES (38, 0, 'H213E');

INSERT INTO dish(hash, top_image, title, description, special_price, section_name, stock)
VALUES('H7A16', 'https://cdn.bmf.kr/_data/product/H7A16/1a9e0f1c8de0e0d268bace68d50b0bf1.jpg', '[Young313] 흰살생선 된장소스구이 200g', '부드러운 명태살을 이용한 특별한 생선요리', 9000, NULL, 10);
INSERT INTO delivery(id, is_monday, dish_hash) VALUES (39, 1, 'H7A16');


INSERT INTO best(category_id, name) VALUES (17011200, '할인특가 세트상품');
INSERT INTO best(category_id, name) VALUES (17011000, '풍성한 고기반찬');
INSERT INTO best(category_id, name) VALUES (17010200, '편리한 반찬세트');
INSERT INTO best(category_id, name) VALUES (17010300, '간편한 덮밥요리');
INSERT INTO best(category_id, name) VALUES (17011400, '우리아이 영양반찬');

-- 할인특가 세트상품
INSERT INTO best_dishes(dish_hash, best_category_id) VALUES ('H9881', 17011200);
INSERT INTO best_dishes(dish_hash, best_category_id) VALUES ('HDF4C', 17011200);
INSERT INTO best_dishes(dish_hash, best_category_id) VALUES ('H7F20', 17011200);
-- 풍성한 고기반찬
INSERT INTO best_dishes(dish_hash, best_category_id) VALUES ('HA567', 17011000);
INSERT INTO best_dishes(dish_hash, best_category_id) VALUES ('H206E', 17011000);
INSERT INTO best_dishes(dish_hash, best_category_id) VALUES ('H75A2', 17011000);
-- 편리한 반찬세트
INSERT INTO best_dishes(dish_hash, best_category_id) VALUES ('E055F', 17010200);
INSERT INTO best_dishes(dish_hash, best_category_id) VALUES ('FDAEB', 17010200);
INSERT INTO best_dishes(dish_hash, best_category_id) VALUES ('H762E', 17010200);
-- 간편한 덮밥요리
INSERT INTO best_dishes(dish_hash, best_category_id) VALUES ('H05FB', 17010300);
INSERT INTO best_dishes(dish_hash, best_category_id) VALUES ('H0699', 17010300);
INSERT INTO best_dishes(dish_hash, best_category_id) VALUES ('HBDEF', 17010300);
-- 우리아이 영양반찬
INSERT INTO best_dishes(dish_hash, best_category_id) VALUES ('H82A2', 17011400);
INSERT INTO best_dishes(dish_hash, best_category_id) VALUES ('H213E', 17011400);
INSERT INTO best_dishes(dish_hash, best_category_id) VALUES ('H7A16', 17011400);
