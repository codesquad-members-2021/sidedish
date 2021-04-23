INSERT INTO `section`(id, `name`) VALUES (1, 'main');
INSERT INTO `section`(id, `name`) VALUES (2, 'soup');
INSERT INTO `section`(id, `name`) VALUES (3, 'side');
INSERT INTO `category`(id, `name`) VALUES (1, 'best');

INSERT INTO `item`(id, section, category, image, alt, top_image, title, description, n_price, s_price, delivery_fee, stock)
VALUES (1, 1, null,
        'http://public.codesquad.kr/jk/storeapp/data/2d3f99a9a35601f4e98837bc4d39b2c8.jpg',
        '[미노리키친] 규동 250g',
        'http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg',
        '[미노리키친] 규동 250g',
        '일본인의 소울푸드! 한국인도 좋아하는 소고기덮밥',
        7000,
        6500,
        2500,
        5
       );
INSERT INTO `thumb_image`(item, item_key, url) VALUES (1, 0, 'http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (1, 1, 'http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (1, 2, 'http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (1, 3, 'http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg');

INSERT INTO `detail_section`(item, item_key, url) VALUES (1, 0, 'http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (1, 1, 'http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (1, 2, 'http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (1, 3, 'http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (1, 4, 'http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (1, 5, 'http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (1, 6, 'http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (1, 7, 'http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (1, 8, 'http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (1, 9, 'http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/c0dd6887c9d9368604fc70d7fc3c4598.jpg');

INSERT INTO `badge`(item, badge_type) VALUES (1, 'EVENT');

INSERT INTO `delivery_type`(item, delivery_type_name) VALUES (1, 'NATIONWIDE');
INSERT INTO `delivery_type`(item, delivery_type_name) VALUES (1, 'DAWN');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (1, 'MON');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (1, 'TUE');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (1, 'WED');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (1, 'THU');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (1, 'FRI');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (1, 'SAT');

INSERT INTO `item`(id, section, category, image, alt, top_image, title, description, n_price, s_price, delivery_fee, stock)
VALUES (2, 1, null,
        'http://public.codesquad.kr/jk/storeapp/data/7674311a02ba7c88675f3186ddaeef9e.jpg',
        '[빅마마의밥친구] 아삭 고소한 연근고기조림 250g',
        'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0f95f44ea8e2e7930321def493753a48.jpg',
        '[빅마마의밥친구] 아삭 고소한 연근고기조림 250g',
        '편식하는 아이도 좋아하는 건강한 연근조림',
        null,
        5500,
        2500,
        5
       );
INSERT INTO `thumb_image`(item, item_key, url) VALUES (2, 0, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0f95f44ea8e2e7930321def493753a48.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (2, 1, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/2d408898494ac950d7d2cfd6c36d59c2.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (2, 2, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/62c8bb77facfc9c3be81f9bf45b27f2a.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (2, 3, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/f6d73afc0ebc1efa71eaea32e9d846f2.jpg');

INSERT INTO `detail_section`(item, item_key, url) VALUES (2, 0, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (2, 1, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/5f73c5c80b62ef63c8a8eecefe32fc29.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (2, 2, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (2, 3, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0253cdebc4972fefd6b94458024fe765.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (2, 4, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/3299da0677b50c8c519adc0335271c49.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (2, 5, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0642265b65dcc2490ab164ff428cbfe2.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (2, 6, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/695683493c1ae475a175475f50d3259f.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (2, 7, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/c8f9bed4f5c07585b869e3d171904a93.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (2, 8, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d2e3274c95c832bc9bfbcebbd548f61b.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (2, 9, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d9e4fa00652483d74b46317d38159a2f.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (2, 10, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d7799b67683128642453f9e2b4c8ce84.jpg');

INSERT INTO `delivery_type`(item, delivery_type_name) VALUES (2, 'NATIONWIDE');
INSERT INTO `delivery_type`(item, delivery_type_name) VALUES (2, 'DAWN');

INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (2, 'TUE');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (2, 'WED');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (2, 'THU');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (2, 'FRI');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (2, 'SAT');

INSERT INTO `item`(id, section, category, image, alt, top_image, title, description, n_price, s_price, delivery_fee, stock)
VALUES (3, 1, null,
        'http://public.codesquad.kr/jk/storeapp/data/cad8eee316cf7151e07638aa57b32a9d.jpg',
        '[소중한식사] 골뱅이무침 195g',
        'http://public.codesquad.kr/jk/storeapp/data/cad8eee316cf7151e07638aa57b32a9d.jpg',
        '[소중한식사] 골뱅이무침 195g',
        '매콤새콤달콤, 반찬으로도 안주로도 좋은',
        7000,
        6300,
        2500,
        5
       );
INSERT INTO `thumb_image`(item, item_key, url) VALUES (3, 0, 'http://public.codesquad.kr/jk/storeapp/data/cad8eee316cf7151e07638aa57b32a9d.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (3, 1, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/2d408898494ac950d7d2cfd6c36d59c2.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (3, 2, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/62c8bb77facfc9c3be81f9bf45b27f2a.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (3, 3, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/f6d73afc0ebc1efa71eaea32e9d846f2.jpg');

INSERT INTO `detail_section`(item, item_key, url) VALUES (3,  0, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (3,  1, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/5f73c5c80b62ef63c8a8eecefe32fc29.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (3,  2, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (3,  3, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0253cdebc4972fefd6b94458024fe765.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (3,  4, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/3299da0677b50c8c519adc0335271c49.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (3,  5, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0642265b65dcc2490ab164ff428cbfe2.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (3,  6, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/695683493c1ae475a175475f50d3259f.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (3,  7, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/c8f9bed4f5c07585b869e3d171904a93.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (3,  8, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d2e3274c95c832bc9bfbcebbd548f61b.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (3,  9, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d9e4fa00652483d74b46317d38159a2f.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (3, 10, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d7799b67683128642453f9e2b4c8ce84.jpg');

INSERT INTO `badge`(item, badge_type) VALUES (3, 'EVENT');

INSERT INTO `delivery_type`(item, delivery_type_name) VALUES (3, 'NATIONWIDE');
INSERT INTO `delivery_type`(item, delivery_type_name) VALUES (3, 'DAWN');

INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (3, 'TUE');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (3, 'WED');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (3, 'THU');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (3, 'FRI');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (3, 'SAT');

INSERT INTO `item`(id, section, category, image, alt, top_image, title, description, n_price, s_price, delivery_fee, stock)
VALUES (4, 1, null,
        'http://public.codesquad.kr/jk/storeapp/data/b6beada6b89af950289003d929936d9c.jpg',
        '[옹가솜씨] 꽁치간장조림 240g',
        'http://public.codesquad.kr/jk/storeapp/data/b6beada6b89af950289003d929936d9c.jpg',
        '[옹가솜씨] 꽁치간장조림 240g',
        '생강 향이 산뜻한',
        null,
        5800,
        2500,
        5
       );
INSERT INTO `thumb_image`(item, item_key, url) VALUES (4, 0, 'http://public.codesquad.kr/jk/storeapp/data/b6beada6b89af950289003d929936d9c.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (4, 1, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/2d408898494ac950d7d2cfd6c36d59c2.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (4, 2, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/62c8bb77facfc9c3be81f9bf45b27f2a.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (4, 3, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/f6d73afc0ebc1efa71eaea32e9d846f2.jpg');

INSERT INTO `detail_section`(item, item_key, url) VALUES (4,  0, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (4,  1, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/5f73c5c80b62ef63c8a8eecefe32fc29.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (4,  2, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (4,  3, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0253cdebc4972fefd6b94458024fe765.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (4,  4, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/3299da0677b50c8c519adc0335271c49.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (4,  5, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0642265b65dcc2490ab164ff428cbfe2.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (4,  6, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/695683493c1ae475a175475f50d3259f.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (4,  7, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/c8f9bed4f5c07585b869e3d171904a93.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (4,  8, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d2e3274c95c832bc9bfbcebbd548f61b.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (4,  9, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d9e4fa00652483d74b46317d38159a2f.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (4, 10, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d7799b67683128642453f9e2b4c8ce84.jpg');

INSERT INTO `delivery_type`(item, delivery_type_name) VALUES (4, 'NATIONWIDE');
INSERT INTO `delivery_type`(item, delivery_type_name) VALUES (4, 'DAWN');

INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (4, 'MON');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (4, 'TUE');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (4, 'WED');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (4, 'THU');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (4, 'FRI');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (4, 'SAT');


INSERT INTO `item`(id, section, category, image, alt, top_image, title, description, n_price, s_price, delivery_fee, stock)
VALUES (5, 1, null,
        'http://public.codesquad.kr/jk/storeapp/data/0221110ead70dfd455e40703bbdd6252.jpg',
        '[마더앤찬] 코다리구이 320g',
        'http://public.codesquad.kr/jk/storeapp/data/0221110ead70dfd455e40703bbdd6252.jpg',
        '[마더앤찬] 코다리구이 320g',
        '큼지막하고 살집 많은 동태 한 마리로 만든 코다리구이입니다.',
        7500,
        6500,
        2500,
        5
       );
INSERT INTO `thumb_image`(item, item_key, url) VALUES (5, 0, 'http://public.codesquad.kr/jk/storeapp/data/0221110ead70dfd455e40703bbdd6252.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (5, 1, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/2d408898494ac950d7d2cfd6c36d59c2.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (5, 2, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/62c8bb77facfc9c3be81f9bf45b27f2a.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (5, 3, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/f6d73afc0ebc1efa71eaea32e9d846f2.jpg');

INSERT INTO `detail_section`(item, item_key, url) VALUES (5,  0, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (5,  1, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/5f73c5c80b62ef63c8a8eecefe32fc29.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (5,  2, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (5,  3, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0253cdebc4972fefd6b94458024fe765.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (5,  4, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/3299da0677b50c8c519adc0335271c49.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (5,  5, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0642265b65dcc2490ab164ff428cbfe2.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (5,  6, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/695683493c1ae475a175475f50d3259f.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (5,  7, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/c8f9bed4f5c07585b869e3d171904a93.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (5,  8, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d2e3274c95c832bc9bfbcebbd548f61b.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (5,  9, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d9e4fa00652483d74b46317d38159a2f.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (5, 10, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d7799b67683128642453f9e2b4c8ce84.jpg');

INSERT INTO `badge`(item, badge_type) VALUES (5, 'LAUNCHING');

INSERT INTO `delivery_type`(item, delivery_type_name) VALUES (5, 'NATIONWIDE');
INSERT INTO `delivery_type`(item, delivery_type_name) VALUES (5, 'DAWN');

INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (5, 'MON');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (5, 'TUE');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (5, 'WED');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (5, 'THU');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (5, 'FRI');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (5, 'SAT');



INSERT INTO `item`(id, section, category, image, alt, top_image, title, description, n_price, s_price, delivery_fee, stock)
VALUES (6, 1, null,
        'http://public.codesquad.kr/jk/storeapp/data/385f4106ac26f6e4fe7c640714f405a5.jpg',
        '[남도애꽃] 반건조 문어조림 120g',
        'http://public.codesquad.kr/jk/storeapp/data/385f4106ac26f6e4fe7c640714f405a5.jpg',
        '[남도애꽃] 반건조 문어조림 120g',
        '씹을수록 감칠맛나는 문어살의 쫄깃함',
        null,
        4600,
        2500,
        5
       );
INSERT INTO `thumb_image`(item, item_key, url) VALUES (6, 0, 'http://public.codesquad.kr/jk/storeapp/data/385f4106ac26f6e4fe7c640714f405a5.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (6, 1, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/2d408898494ac950d7d2cfd6c36d59c2.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (6, 2, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/62c8bb77facfc9c3be81f9bf45b27f2a.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (6, 3, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/f6d73afc0ebc1efa71eaea32e9d846f2.jpg');

INSERT INTO `detail_section`(item, item_key, url) VALUES (6,  0, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (6,  1, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/5f73c5c80b62ef63c8a8eecefe32fc29.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (6,  2, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (6,  3, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0253cdebc4972fefd6b94458024fe765.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (6,  4, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/3299da0677b50c8c519adc0335271c49.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (6,  5, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0642265b65dcc2490ab164ff428cbfe2.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (6,  6, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/695683493c1ae475a175475f50d3259f.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (6,  7, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/c8f9bed4f5c07585b869e3d171904a93.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (6,  8, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d2e3274c95c832bc9bfbcebbd548f61b.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (6,  9, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d9e4fa00652483d74b46317d38159a2f.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (6, 10, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d7799b67683128642453f9e2b4c8ce84.jpg');

INSERT INTO `delivery_type`(item, delivery_type_name) VALUES (6, 'NATIONWIDE');
INSERT INTO `delivery_type`(item, delivery_type_name) VALUES (6, 'DAWN');

INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (6, 'TUE');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (6, 'WED');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (6, 'THU');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (6, 'FRI');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (6, 'SAT');


INSERT INTO `item`(id, section, category, image, alt, top_image, title, description, n_price, s_price, delivery_fee, stock)
VALUES (7, 1, null,
        'http://public.codesquad.kr/jk/storeapp/data/2455226945d52f5aefd51f35d663bb16.jpg',
        '[마샐미디쉬] 매콤마늘쫑 해산물볶음 180g',
        'http://public.codesquad.kr/jk/storeapp/data/2455226945d52f5aefd51f35d663bb16.jpg',
        '[마샐미디쉬] 매콤마늘쫑 해산물볶음 180g',
        '탱글탱글한 새우와 오징어를 마늘쫑과 함께 매콤하게 볶아냈어요.',
        6900,
        6210,
        2500,
        5
       );
INSERT INTO `thumb_image`(item, item_key, url) VALUES (7, 0, 'http://public.codesquad.kr/jk/storeapp/data/2455226945d52f5aefd51f35d663bb16.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (7, 1, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/2d408898494ac950d7d2cfd6c36d59c2.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (7, 2, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/62c8bb77facfc9c3be81f9bf45b27f2a.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (7, 3, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/f6d73afc0ebc1efa71eaea32e9d846f2.jpg');

INSERT INTO `detail_section`(item, item_key, url) VALUES (7,  0, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (7,  1, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/5f73c5c80b62ef63c8a8eecefe32fc29.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (7,  2, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (7,  3, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0253cdebc4972fefd6b94458024fe765.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (7,  4, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/3299da0677b50c8c519adc0335271c49.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (7,  5, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0642265b65dcc2490ab164ff428cbfe2.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (7,  6, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/695683493c1ae475a175475f50d3259f.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (7,  7, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/c8f9bed4f5c07585b869e3d171904a93.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (7,  8, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d2e3274c95c832bc9bfbcebbd548f61b.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (7,  9, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d9e4fa00652483d74b46317d38159a2f.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (7, 10, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d7799b67683128642453f9e2b4c8ce84.jpg');

INSERT INTO `badge`(item, badge_type) VALUES (7, 'LAUNCHING');

INSERT INTO `delivery_type`(item, delivery_type_name) VALUES (7, 'NATIONWIDE');
INSERT INTO `delivery_type`(item, delivery_type_name) VALUES (7, 'DAWN');

INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (7, 'MON');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (7, 'TUE');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (7, 'WED');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (7, 'THU');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (7, 'FRI');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (7, 'SAT');

INSERT INTO `item`(id, section, category, image, alt, top_image, title, description, n_price, s_price, delivery_fee, stock)
VALUES (8, 1, null,
        'http://public.codesquad.kr/jk/storeapp/data/bc3b777115e8377a48c7bd762fe5fdc9.jpg',
        '[빅마마의밥친구] 비빔오징어 150g',
        'http://public.codesquad.kr/jk/storeapp/data/bc3b777115e8377a48c7bd762fe5fdc9.jpg',
        '[빅마마의밥친구] 비빔오징어 150g',
        '달콤한 신야초발효액이 포인트!',
        null,
        5000,
        2500,
        5
       );
INSERT INTO `thumb_image`(item, item_key, url) VALUES (8, 0, 'http://public.codesquad.kr/jk/storeapp/data/bc3b777115e8377a48c7bd762fe5fdc9.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (8, 1, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/2d408898494ac950d7d2cfd6c36d59c2.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (8, 2, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/62c8bb77facfc9c3be81f9bf45b27f2a.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (8, 3, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/f6d73afc0ebc1efa71eaea32e9d846f2.jpg');

INSERT INTO `detail_section`(item, item_key, url) VALUES (8,  0, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (8,  1, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/5f73c5c80b62ef63c8a8eecefe32fc29.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (8,  2, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (8,  3, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0253cdebc4972fefd6b94458024fe765.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (8,  4, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/3299da0677b50c8c519adc0335271c49.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (8,  5, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0642265b65dcc2490ab164ff428cbfe2.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (8,  6, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/695683493c1ae475a175475f50d3259f.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (8,  7, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/c8f9bed4f5c07585b869e3d171904a93.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (8,  8, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d2e3274c95c832bc9bfbcebbd548f61b.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (8,  9, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d9e4fa00652483d74b46317d38159a2f.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (8, 10, 'http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d7799b67683128642453f9e2b4c8ce84.jpg');

INSERT INTO `delivery_type`(item, delivery_type_name) VALUES (8, 'NATIONWIDE');
INSERT INTO `delivery_type`(item, delivery_type_name) VALUES (8, 'DAWN');

INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (8, 'TUE');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (8, 'WED');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (8, 'THU');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (8, 'FRI');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (8, 'SAT');

INSERT INTO `item`(id, section, category, image, alt, top_image, title, description, n_price, s_price, delivery_fee, stock)
VALUES (9, 1, null,
        'http://public.codesquad.kr/jk/storeapp/data/d1fccf125f0a78113d0e06cb888f2e74.jpg',
        '[수하동] 특곰탕 850g',
        'http://public.codesquad.kr/jk/storeapp/data/d1fccf125f0a78113d0e06cb888f2e74.jpg',
        '[수하동] 특곰탕 850g',
        '100% 한우양지로 끓여낸 70년전통의 서울식곰탕',
        15000,
        14200,
        2500,
        5
       );
INSERT INTO `thumb_image`(item, item_key, url) VALUES (9, 0, 'http://public.codesquad.kr/jk/storeapp/data/d1fccf125f0a78113d0e06cb888f2e74.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (9, 1, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/92f556b605c4a84813070d7214c4f336.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (9, 2, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/538b8ab021c7814aa4af860d94f81287.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (9, 3, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/adaef08ab0680b087096afa0f0070fad.jpg');

INSERT INTO `detail_section`(item, item_key, url) VALUES (9,  0, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/341b8605fa224ec1808c4f169097d170.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (9,  1, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/0228d4cb660a3cca06952917bd024dcb.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (9,  2, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/e027227f61a93b6473e8c4bbd5c3de74.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (9,  3, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/03ac0b09199421bb61727c667c2361f6.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (9,  4, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/cbe4a3e12b7bdba5cf410e0e19dcf1ca.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (9,  5, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/b58fa5791b67db106524b48442cb1c6a.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (9,  6, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/82cfe0332f0e1c927a23b79f1d152430.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (9,  7, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/390ca9ad5a574cbe7f3f6e26871f6690.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (9,  8, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/e113889a6120357c8e6196802a9f155b.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (9,  9, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/967e8e1ef357e9722b796e2bcb09ba3d.jpg');

INSERT INTO `badge`(item, badge_type) VALUES (9, 'EVENT');

INSERT INTO `delivery_type`(item, delivery_type_name) VALUES (9, 'NATIONWIDE');
INSERT INTO `delivery_type`(item, delivery_type_name) VALUES (9, 'DAWN');

INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (9, 'TUE');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (9, 'WED');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (9, 'THU');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (9, 'FRI');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (9, 'SAT');

INSERT INTO `item`(id, section, category, image, alt, top_image, title, description, n_price, s_price, delivery_fee, stock)
VALUES (10, 1, null,
        'http://public.codesquad.kr/jk/storeapp/data/c069bc32cb37727c59e1f0c2839311a0.jpg',
        '[빅마마의밥친구] 된장찌개 900g',
        'http://public.codesquad.kr/jk/storeapp/data/c069bc32cb37727c59e1f0c2839311a0.jpg',
        '[빅마마의밥친구] 된장찌개 900g',
        '항아리에서 숙성시킨 집된장으로만 맛을내 짜지 않은 된장찌개',
        null,
        10000,
        2500,
        5
       );
INSERT INTO `thumb_image`(item, item_key, url) VALUES (10, 0, 'http://public.codesquad.kr/jk/storeapp/data/c069bc32cb37727c59e1f0c2839311a0.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (10, 1, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/edc6bae2e2663f05b4e8eb5a2b95d68f.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (10, 2, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/c935f5913dc66b11ebceeef85485c438.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (10, 3, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/7c1e24867611394f04b37d05593e21ba.jpg');

INSERT INTO `detail_section`(item, item_key, url) VALUES (10,  0, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/670e7deefe1d84a4f4e058655fbd4d7c.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (10,  1, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/1898cda038e92454395b8ffca8cd4393.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (10,  2, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/49516d302dad870fbdd75cf98a01eae4.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (10,  3, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/c1bb6fe4f72fcea27ea989ae48c61c86.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (10,  4, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/49afed8d3ec417b39ce8de456fc6661c.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (10,  5, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/e62762e63f3e12dc2857a065badf1eea.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (10,  6, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/31103ab946bff52b709ec6891e768c05.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (10,  7, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/f84dc16f4f6d97661bd13d587a72d6b1.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (10,  8, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/fd3f49614f731a0610a5409c0deb3c60.jpg');

INSERT INTO `delivery_type`(item, delivery_type_name) VALUES (10, 'NATIONWIDE');
INSERT INTO `delivery_type`(item, delivery_type_name) VALUES (10, 'DAWN');

INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (10, 'TUE');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (10, 'WED');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (10, 'THU');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (10, 'FRI');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (10, 'SAT');

INSERT INTO `item`(id, section, category, image, alt, top_image, title, description, n_price, s_price, delivery_fee, stock)
VALUES (11, 1, null,
        'http://public.codesquad.kr/jk/storeapp/data/f31fc3f5828c27ff60e4cf89a862d31c.jpg',
        '[탐나는밥상] 동태탕 1000g',
        'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/4e96f386d5a5c4459bc0ac6ffd0c1fce.jpg',
        '[탐나는밥상] 동태탕 1000g',
        '칼칼한 국물이 속 풀기에 딱 좋은 동태탕',
        null,
        14000,
        2500,
        5
       );
INSERT INTO `thumb_image`(item, item_key, url) VALUES (11, 0, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/4e96f386d5a5c4459bc0ac6ffd0c1fce.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (11, 1, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/00327d0df92e29bad02e7387349bed53.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (11, 2, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/781fea32c56eb102429902a2f62cbaf3.jpg');

INSERT INTO `detail_section`(item, item_key, url) VALUES (11,  0, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/829c8a3fb87d98ef42ae449215d4c8b7.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (11,  1, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/25900d6f62866f25c024105e10907f43.png');
INSERT INTO `detail_section`(item, item_key, url) VALUES (11,  2, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/e52f3fbd48fbe9ff2ac99759cacd0042.png');
INSERT INTO `detail_section`(item, item_key, url) VALUES (11,  3, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/edd7a54096d6df1b8bc8b318cea0191c.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (11,  4, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/fb8e6e21faa8284021c1b1c7a1ae1281.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (11,  5, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/36a0566d2fb69a4bcea946727181836d.jpg');

INSERT INTO `delivery_type`(item, delivery_type_name) VALUES (11, 'NATIONWIDE');
INSERT INTO `delivery_type`(item, delivery_type_name) VALUES (11, 'DAWN');

INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (11, 'TUE');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (11, 'WED');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (11, 'THU');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (11, 'FRI');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (11, 'SAT');

INSERT INTO `item`(id, section, category, image, alt, top_image, title, description, n_price, s_price, delivery_fee, stock)
VALUES (12, 1, null,
        'http://public.codesquad.kr/jk/storeapp/data/6edbb16da52708e8533b85fbf743f882.jpg',
        '[국물닷컴] 치즈부대찌개 600g',
        'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/4e96f386d5a5c4459bc0ac6ffd0c1fce.jpg',
        '[국물닷컴] 치즈부대찌개 600g',
        '안주용 부대찌개와는 달라 밥말아먹기 딱 좋은',
        5500,
        4300,
        2500,
        5
       );
INSERT INTO `thumb_image`(item, item_key, url) VALUES (12, 0, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/4e96f386d5a5c4459bc0ac6ffd0c1fce.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (12, 1, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/00327d0df92e29bad02e7387349bed53.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (12, 2, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/781fea32c56eb102429902a2f62cbaf3.jpg');

INSERT INTO `detail_section`(item, item_key, url) VALUES (12,  0, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/829c8a3fb87d98ef42ae449215d4c8b7.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (12,  1, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/25900d6f62866f25c024105e10907f43.png');
INSERT INTO `detail_section`(item, item_key, url) VALUES (12,  2, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/e52f3fbd48fbe9ff2ac99759cacd0042.png');
INSERT INTO `detail_section`(item, item_key, url) VALUES (12,  3, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/edd7a54096d6df1b8bc8b318cea0191c.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (12,  4, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/fb8e6e21faa8284021c1b1c7a1ae1281.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (12,  5, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/36a0566d2fb69a4bcea946727181836d.jpg');

INSERT INTO `badge`(item, badge_type) VALUES (12, 'EVENT');

INSERT INTO `delivery_type`(item, delivery_type_name) VALUES (12, 'NATIONWIDE');
INSERT INTO `delivery_type`(item, delivery_type_name) VALUES (12, 'DAWN');

INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (12, 'MON');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (12, 'TUE');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (12, 'WED');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (12, 'THU');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (12, 'FRI');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (12, 'SAT');

INSERT INTO `item`(id, section, category, image, alt, top_image, title, description, n_price, s_price, delivery_fee, stock) VALUES (13, 2, null , 'http://public.codesquad.kr/jk/storeapp/data/892f3e7f043bfa7dbbcd58f88eecac36.jpg', '[집밥의완성] 스키야키 1.5kg (2~3인분)', 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/4e96f386d5a5c4459bc0ac6ffd0c1fce.jpg', '[집밥의완성] 스키야키 1.5kg (2~3인분)', '진한 풍미의 일본식 전골, 스키야키', 19800, 10000, 2500, 5);
INSERT INTO `detail_section`(item, item_key, url) VALUES (13, 0, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/829c8a3fb87d98ef42ae449215d4c8b7.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (13, 1, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/25900d6f62866f25c024105e10907f43.png');
INSERT INTO `detail_section`(item, item_key, url) VALUES (13, 2, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/e52f3fbd48fbe9ff2ac99759cacd0042.png');
INSERT INTO `detail_section`(item, item_key, url) VALUES (13, 3, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/edd7a54096d6df1b8bc8b318cea0191c.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (13, 4, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/fb8e6e21faa8284021c1b1c7a1ae1281.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (13, 5, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/36a0566d2fb69a4bcea946727181836d.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (13, 0, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/4e96f386d5a5c4459bc0ac6ffd0c1fce.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (13, 1, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/00327d0df92e29bad02e7387349bed53.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (13, 2, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/781fea32c56eb102429902a2f62cbaf3.jpg');
INSERT INTO `badge`(item, badge_type) VALUES (13, 'EVENT');
INSERT INTO `delivery_type`(item, delivery_type_name) VALUES (13, 'NATIONWIDE');
INSERT INTO `delivery_type`(item, delivery_type_name) VALUES (13, 'DAWN');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (13, 'MON');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (13, 'TUE');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (13, 'WED');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (13, 'THU');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (13, 'FRI');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (13, 'SAT');

INSERT INTO `item`(id, section, category, image, alt, top_image, title, description, n_price, s_price, delivery_fee, stock) VALUES (14, 2, null , 'http://public.codesquad.kr/jk/storeapp/data/ae571e13d18fd4f0f40d685d2c8fe8f1.jpg', '[새로미부산어묵] 프리미엄 어묵탕세트', 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/4e96f386d5a5c4459bc0ac6ffd0c1fce.jpg', '[새로미부산어묵] 프리미엄 어묵탕세트', '밀가루 0% 프리미엄 어묵에 어묵스프까지 드려요!', 18000, 14400, 2500, 5);
INSERT INTO `detail_section`(item, item_key, url) VALUES (14, 0, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/829c8a3fb87d98ef42ae449215d4c8b7.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (14, 1, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/25900d6f62866f25c024105e10907f43.png');
INSERT INTO `detail_section`(item, item_key, url) VALUES (14, 2, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/e52f3fbd48fbe9ff2ac99759cacd0042.png');
INSERT INTO `detail_section`(item, item_key, url) VALUES (14, 3, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/edd7a54096d6df1b8bc8b318cea0191c.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (14, 4, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/fb8e6e21faa8284021c1b1c7a1ae1281.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (14, 5, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/36a0566d2fb69a4bcea946727181836d.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (14, 0, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/4e96f386d5a5c4459bc0ac6ffd0c1fce.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (14, 1, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/00327d0df92e29bad02e7387349bed53.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (14, 2, 'http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/781fea32c56eb102429902a2f62cbaf3.jpg');
INSERT INTO `badge`(item, badge_type) VALUES (14, 'EVENT');
INSERT INTO `badge`(item, badge_type) VALUES (14, 'LAUNCHING');
INSERT INTO `delivery_type`(item, delivery_type_name) VALUES (14, 'NATIONWIDE');
INSERT INTO `delivery_type`(item, delivery_type_name) VALUES (14, 'DAWN');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (14, 'MON');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (14, 'TUE');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (14, 'WED');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (14, 'THU');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (14, 'FRI');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (14, 'SAT');

INSERT INTO `item`(id, section, category, image, alt, top_image, title, description, n_price, s_price, delivery_fee, stock) VALUES (15, 2, null, 'http://public.codesquad.kr/jk/storeapp/data/8fd330b5f5dbccbcbf4f5731e5e9e29b.jpg', '[모이세] 육개장 1팩(600g)', 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/2ad963a9f63d371826748c852a0025c3.jpg', '[모이세] 육개장 1팩(600g)', '제주3대해장국 맛집의 인기메뉴', 5900, 4400, 2500, 5);
INSERT INTO `detail_section`(item, item_key, url) VALUES (15, 0, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/2ad963a9f63d371826748c852a0025c3.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (15, 1, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/855b42b4e80162e6930f06aa80bd1272.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (15, 3, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/1966de56cf138639d5d50d4bf2db8e72.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (15, 4, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b3dd54082745d1188f3a6e582e7cd993.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (15, 5, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/4a6fd1fd1116c14aa6aef5e6851ab6a9.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (15, 6, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/7e12275d669102d0269278a7c91ab49d.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (15, 7, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/ab34ea3755f59a21662266eb62b7bc4b.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (15, 8, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b0a70ff59a3b5360b6246b507693c4d4.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (15, 9, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/dc772923b4a2e053f1baf68fa28a48ee.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (15, 0, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/2ad963a9f63d371826748c852a0025c3.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (15, 1, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/f945d8ac1dccc3f931bcaf35de5de582.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (15, 2, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/bacb0b8186371bfafbd92dbeec718e13.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (15, 3, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b96b02e9a956c6d5ad1e10eb14ba81e0.jpg');
INSERT INTO `badge`(item, badge_type) VALUES (15, 'LAUNCHING');
INSERT INTO `delivery_type`(item, delivery_type_name) VALUES (15, 'NATIONWIDE');
INSERT INTO `delivery_type`(item, delivery_type_name) VALUES (15, 'DAWN');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (15, 'MON');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (15, 'TUE');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (15, 'WED');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (15, 'THU');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (15, 'FRI');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (15, 'SAT');

INSERT INTO `item`(id, section, category, image, alt, top_image, title, description, n_price, s_price, delivery_fee, stock) VALUES (16, 2, null , 'http://public.codesquad.kr/jk/storeapp/data/2416b58044d49f0d3a24256f8e76163b.jpg', '[마더앤찬] 명란감자국  630ml', 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/2ad963a9f63d371826748c852a0025c3.jpg', '[마더앤찬] 명란감자국  630ml', '간간한 저염명란과 고소한 감자가 조화로운 국이에요', 7000, 6300, 2500, 5);
INSERT INTO `detail_section`(item, item_key, url) VALUES (16, 0, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/2ad963a9f63d371826748c852a0025c3.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (16, 1, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/855b42b4e80162e6930f06aa80bd1272.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (16, 3, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/1966de56cf138639d5d50d4bf2db8e72.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (16, 4, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b3dd54082745d1188f3a6e582e7cd993.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (16, 5, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/4a6fd1fd1116c14aa6aef5e6851ab6a9.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (16, 6, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/7e12275d669102d0269278a7c91ab49d.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (16, 7, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/ab34ea3755f59a21662266eb62b7bc4b.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (16, 8, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b0a70ff59a3b5360b6246b507693c4d4.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (16, 9, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/dc772923b4a2e053f1baf68fa28a48ee.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (16, 0, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/2ad963a9f63d371826748c852a0025c3.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (16, 1, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/f945d8ac1dccc3f931bcaf35de5de582.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (16, 2, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/bacb0b8186371bfafbd92dbeec718e13.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (16, 3, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b96b02e9a956c6d5ad1e10eb14ba81e0.jpg');
INSERT INTO `badge`(item, badge_type) VALUES (16, 'LAUNCHING');
INSERT INTO `delivery_type`(item, delivery_type_name) VALUES (16, 'NATIONWIDE');
INSERT INTO `delivery_type`(item, delivery_type_name) VALUES (16, 'DAWN');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (16, 'MON');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (16, 'TUE');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (16, 'WED');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (16, 'THU');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (16, 'FRI');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (16, 'SAT');

INSERT INTO `item`(id, section, category, image, alt, top_image, title, description, n_price, s_price, delivery_fee, stock) VALUES (17, 3, null , 'http://public.codesquad.kr/jk/storeapp/data/fdb0d5fcfb86e332505785225a6d9ade.jpg', '[마샐미디쉬] 유자소스 연근무침 250g', 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/2ad963a9f63d371826748c852a0025c3.jpg', '[마샐미디쉬] 유자소스 연근무침 250g', '향긋한 유자향과 아삭한 연근', null , 6500, 2500, 5);
INSERT INTO `detail_section`(item, item_key, url) VALUES (17, 0, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/3d67aabd2751620367e1d1ac3e3d7ef2.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (17, 1, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/855b42b4e80162e6930f06aa80bd1272.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (17, 2, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/1966de56cf138639d5d50d4bf2db8e72.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (17, 3, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b3dd54082745d1188f3a6e582e7cd993.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (17, 4, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/4a6fd1fd1116c14aa6aef5e6851ab6a9.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (17, 5, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/7e12275d669102d0269278a7c91ab49d.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (17, 6, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/ab34ea3755f59a21662266eb62b7bc4b.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (17, 7, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b0a70ff59a3b5360b6246b507693c4d4.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (17, 8, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/dc772923b4a2e053f1baf68fa28a48ee.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (17, 0, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/2ad963a9f63d371826748c852a0025c3.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (17, 1, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/f945d8ac1dccc3f931bcaf35de5de582.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (17, 2, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/bacb0b8186371bfafbd92dbeec718e13.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (17, 3, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b96b02e9a956c6d5ad1e10eb14ba81e0.jpg');
INSERT INTO `delivery_type`(item, delivery_type_name) VALUES (17, 'NATIONWIDE');
INSERT INTO `delivery_type`(item, delivery_type_name) VALUES (17, 'DAWN');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (17, 'MON');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (17, 'TUE');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (17, 'WED');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (17, 'THU');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (17, 'FRI');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (17, 'SAT');

INSERT INTO `item`(id, section, category, image, alt, top_image, title, description, n_price, s_price, delivery_fee, stock) VALUES (18, 3, null , 'http://public.codesquad.kr/jk/storeapp/data/e5646e5fc09a01a9243979b229e0572b.jpg', '[동네부엌] 쇠고기야채장조림 200g', 'http://public.codesquad.kr/jk/storeapp/data/e5646e5fc09a01a9243979b229e0572b.jpg', '[동네부엌] 쇠고기야채장조림 200g', '부드러운 고기부터 밥비벼먹기 딱좋은 국물까지', null , 7400, 2500, 5);
INSERT INTO `detail_section`(item, item_key, url) VALUES (18, 0, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/3d67aabd2751620367e1d1ac3e3d7ef2.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (18, 1, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/855b42b4e80162e6930f06aa80bd1272.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (18, 2, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/1966de56cf138639d5d50d4bf2db8e72.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (18, 3, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b3dd54082745d1188f3a6e582e7cd993.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (18, 4, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/4a6fd1fd1116c14aa6aef5e6851ab6a9.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (18, 5, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/7e12275d669102d0269278a7c91ab49d.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (18, 6, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/ab34ea3755f59a21662266eb62b7bc4b.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (18, 7, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b0a70ff59a3b5360b6246b507693c4d4.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (18, 8, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/dc772923b4a2e053f1baf68fa28a48ee.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (18, 0, 'http://public.codesquad.kr/jk/storeapp/data/e5646e5fc09a01a9243979b229e0572b.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (18, 1, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/f945d8ac1dccc3f931bcaf35de5de582.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (18, 2, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/bacb0b8186371bfafbd92dbeec718e13.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (18, 3, 'http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b96b02e9a956c6d5ad1e10eb14ba81e0.jpg');
INSERT INTO `delivery_type`(item, delivery_type_name) VALUES (18, 'NATIONWIDE');
INSERT INTO `delivery_type`(item, delivery_type_name) VALUES (18, 'DAWN');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (18, 'TUE');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (18, 'WED');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (18, 'THU');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (18, 'FRI');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (18, 'SAT');

INSERT INTO `item`(id, section, category, image, alt, top_image, title, description, n_price, s_price, delivery_fee, stock) VALUES (19, 3, null , 'http://public.codesquad.kr/jk/storeapp/data/4cfd1954861ebd18b5b53e558a8e902e.jpg', '[소중한식사] 도라지초무침 150g', 'http://public.codesquad.kr/jk/storeapp/data/4cfd1954861ebd18b5b53e558a8e902e.jpg', '[소중한식사] 도라지초무침 150g', '새콤달콤 입맛 돋우는', null, 4000, 2500, 5);
INSERT INTO `detail_section`(item, item_key, url) VALUES (19, 0, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/670e7deefe1d84a4f4e058655fbd4d7c.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (19, 1, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/1898cda038e92454395b8ffca8cd4393.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (19, 2, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/49516d302dad870fbdd75cf98a01eae4.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (19, 3, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/c1bb6fe4f72fcea27ea989ae48c61c86.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (19, 4, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/49afed8d3ec417b39ce8de456fc6661c.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (19, 5, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/e62762e63f3e12dc2857a065badf1eea.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (19, 6, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/31103ab946bff52b709ec6891e768c05.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (19, 7, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/f84dc16f4f6d97661bd13d587a72d6b1.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (19, 8, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/fd3f49614f731a0610a5409c0deb3c60.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (19, 0, 'http://public.codesquad.kr/jk/storeapp/data/4cfd1954861ebd18b5b53e558a8e902e.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (19, 1, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/edc6bae2e2663f05b4e8eb5a2b95d68f.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (19, 2, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/c935f5913dc66b11ebceeef85485c438.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (19, 3, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/7c1e24867611394f04b37d05593e21ba.jpg');
INSERT INTO `delivery_type`(item, delivery_type_name) VALUES (19, 'NATIONWIDE');
INSERT INTO `delivery_type`(item, delivery_type_name) VALUES (19, 'DAWN');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (19, 'TUE');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (19, 'WED');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (19, 'THU');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (19, 'FRI');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (19, 'SAT');

INSERT INTO `item`(id, section, category, image, alt, top_image, title, description, n_price, s_price, delivery_fee, stock) VALUES (20, 3, null, 'http://public.codesquad.kr/jk/storeapp/data/422befe07f7e2860b9a83a8d7049ec2e.jpg', '[미노리키친] 일본식 우엉조림(킨피라고보) 80g', 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/c8c8045696b4692107ef28c8b445ca42.jpg', '[미노리키친] 일본식 우엉조림(킨피라고보) 80g', '한국식 우엉조림과는 다른 진한 감칠맛', null, 3300, 2500, 5);
INSERT INTO `detail_section`(item, item_key, url) VALUES (20, 0, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/670e7deefe1d84a4f4e058655fbd4d7c.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (20, 1, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/1898cda038e92454395b8ffca8cd4393.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (20, 2, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/49516d302dad870fbdd75cf98a01eae4.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (20, 3, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/c1bb6fe4f72fcea27ea989ae48c61c86.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (20, 4, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/49afed8d3ec417b39ce8de456fc6661c.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (20, 5, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/e62762e63f3e12dc2857a065badf1eea.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (20, 6, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/31103ab946bff52b709ec6891e768c05.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (20, 7, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/f84dc16f4f6d97661bd13d587a72d6b1.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (20, 8, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/fd3f49614f731a0610a5409c0deb3c60.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (20, 0, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/c8c8045696b4692107ef28c8b445ca42.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (20, 1, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/edc6bae2e2663f05b4e8eb5a2b95d68f.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (20, 2, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/c935f5913dc66b11ebceeef85485c438.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (20, 3, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/7c1e24867611394f04b37d05593e21ba.jpg');
INSERT INTO `delivery_type`(item, delivery_type_name) VALUES (20, 'NATIONWIDE');
INSERT INTO `delivery_type`(item, delivery_type_name) VALUES (20, 'DAWN');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (20, 'MON');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (20, 'TUE');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (20, 'WED');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (20, 'THU');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (20, 'FRI');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (20, 'SAT');


INSERT INTO `item`(id, section, category, image, alt, top_image, title, description, n_price, s_price, delivery_fee, stock) VALUES (21, 3, null , 'http://public.codesquad.kr/jk/storeapp/data/d0b5d2be962947d9534e2140d1b34b2d.jpg', '[빅마마의밥친구] 갈치포무침 150g', 'http://public.codesquad.kr/jk/storeapp/data/d0b5d2be962947d9534e2140d1b34b2d.jpg', '[빅마마의밥친구] 갈치포무침 150g', '쉽게 접할수 없는 꼬순내가득 갈치포 무침', null , 7000, 2500, 5);
INSERT INTO `detail_section`(item, item_key, url) VALUES (21, 0, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/670e7deefe1d84a4f4e058655fbd4d7c.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (21, 1, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/1898cda038e92454395b8ffca8cd4393.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (21, 2, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/49516d302dad870fbdd75cf98a01eae4.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (21, 3, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/c1bb6fe4f72fcea27ea989ae48c61c86.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (21, 4, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/49afed8d3ec417b39ce8de456fc6661c.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (21, 5, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/e62762e63f3e12dc2857a065badf1eea.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (21, 6, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/31103ab946bff52b709ec6891e768c05.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (21, 7, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/f84dc16f4f6d97661bd13d587a72d6b1.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (21, 8, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/fd3f49614f731a0610a5409c0deb3c60.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (21, 0, 'http://public.codesquad.kr/jk/storeapp/data/d0b5d2be962947d9534e2140d1b34b2d.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (21, 1, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/edc6bae2e2663f05b4e8eb5a2b95d68f.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (21, 2, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/c935f5913dc66b11ebceeef85485c438.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (21, 3, 'http://public.codesquad.kr/jk/storeapp/data/detail/H602F/7c1e24867611394f04b37d05593e21ba.jpg');
INSERT INTO `delivery_type`(item, delivery_type_name) VALUES (21, 'NATIONWIDE');
INSERT INTO `delivery_type`(item, delivery_type_name) VALUES (21, 'DAWN');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (21, 'TUE');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (21, 'WED');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (21, 'THU');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (21, 'FRI');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (21, 'SAT');


INSERT INTO `item`(id, section, category, image, alt, top_image, title, description, n_price, s_price, delivery_fee, stock) VALUES (22, 3, null, 'imageUrl', 'alt', 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/43c38eeffa556554c9b06301eb3e85b2.jpg', 'title', '아이반찬으로 최고 계란말이', 4300, 3900, 2500, 5);
INSERT INTO `detail_section`(item, item_key, url) VALUES (22, 0, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/341b8605fa224ec1808c4f169097d170.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (22, 1, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/0228d4cb660a3cca06952917bd024dcb.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (22, 2, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/e027227f61a93b6473e8c4bbd5c3de74.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (22, 3, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/03ac0b09199421bb61727c667c2361f6.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (22, 4, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/cbe4a3e12b7bdba5cf410e0e19dcf1ca.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (22, 5, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/b58fa5791b67db106524b48442cb1c6a.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (22, 6, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/82cfe0332f0e1c927a23b79f1d152430.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (22, 7, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/390ca9ad5a574cbe7f3f6e26871f6690.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (22, 8, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/e113889a6120357c8e6196802a9f155b.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (22, 9, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/967e8e1ef357e9722b796e2bcb09ba3d.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (22, 0, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/43c38eeffa556554c9b06301eb3e85b2.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (22, 1, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/92f556b605c4a84813070d7214c4f336.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (22, 2, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/538b8ab021c7814aa4af860d94f81287.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (22, 3, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/adaef08ab0680b087096afa0f0070fad.jpg');
INSERT INTO `badge`(item, badge_type) VALUES (22, 'EVENT');
INSERT INTO `delivery_type`(item, delivery_type_name) VALUES (22, 'NATIONWIDE');
INSERT INTO `delivery_type`(item, delivery_type_name) VALUES (22, 'DAWN');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (22, 'MON');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (22, 'TUE');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (22, 'WED');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (22, 'THU');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (22, 'FRI');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (22, 'SAT');

INSERT INTO `item`(id, section, category, image, alt, top_image, title, description, n_price, s_price, delivery_fee, stock) VALUES (23, 3, null, 'http://public.codesquad.kr/jk/storeapp/data/757878b14ee5a8d5af905c154fc38f01.jpg', '[옹가솜씨] 달걀곤약조림 330g', 'http://public.codesquad.kr/jk/storeapp/data/757878b14ee5a8d5af905c154fc38f01.jpg', '[옹가솜씨] 달걀곤약조림 330g', '칼로리 부담 쭉쭉 내린', null, 5800, 2500, 5);
INSERT INTO `detail_section`(item, item_key, url) VALUES (23, 0, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/341b8605fa224ec1808c4f169097d170.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (23, 1, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/0228d4cb660a3cca06952917bd024dcb.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (23, 2, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/e027227f61a93b6473e8c4bbd5c3de74.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (23, 3, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/03ac0b09199421bb61727c667c2361f6.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (23, 4, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/cbe4a3e12b7bdba5cf410e0e19dcf1ca.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (23, 5, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/b58fa5791b67db106524b48442cb1c6a.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (23, 6, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/82cfe0332f0e1c927a23b79f1d152430.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (23, 7, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/390ca9ad5a574cbe7f3f6e26871f6690.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (23, 8, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/e113889a6120357c8e6196802a9f155b.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (23, 9, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/967e8e1ef357e9722b796e2bcb09ba3d.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (23, 0, 'http://public.codesquad.kr/jk/storeapp/data/757878b14ee5a8d5af905c154fc38f01.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (23, 1, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/92f556b605c4a84813070d7214c4f336.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (23, 2, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/538b8ab021c7814aa4af860d94f81287.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (23, 3, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/adaef08ab0680b087096afa0f0070fad.jpg');
INSERT INTO `delivery_type`(item, delivery_type_name) VALUES (23, 'NATIONWIDE');
INSERT INTO `delivery_type`(item, delivery_type_name) VALUES (23, 'DAWN');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (23, 'MON');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (23, 'TUE');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (23, 'WED');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (23, 'THU');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (23, 'FRI');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (23, 'SAT');

INSERT INTO `item`(id, section, category, image, alt, top_image, title, description, n_price, s_price, delivery_fee, stock) VALUES (24, 3, null, 'http://public.codesquad.kr/jk/storeapp/data/043cf496f07899e7515f761e29d1ffa9.jpg', '[너의반찬] 미소된장 고추무침 200g', 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/43c38eeffa556554c9b06301eb3e85b2.jpg', '[너의반찬] 미소된장 고추무침 200g', '고소한 양념 때문에 손이 자꾸 가요', null, 4500, 2500, 5);
INSERT INTO `detail_section`(item, item_key, url) VALUES (24, 0, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/341b8605fa224ec1808c4f169097d170.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (24, 1, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/0228d4cb660a3cca06952917bd024dcb.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (24, 2, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/e027227f61a93b6473e8c4bbd5c3de74.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (24, 3, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/03ac0b09199421bb61727c667c2361f6.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (24, 4, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/cbe4a3e12b7bdba5cf410e0e19dcf1ca.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (24, 5, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/b58fa5791b67db106524b48442cb1c6a.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (24, 6, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/82cfe0332f0e1c927a23b79f1d152430.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (24, 7, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/390ca9ad5a574cbe7f3f6e26871f6690.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (24, 8, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/e113889a6120357c8e6196802a9f155b.jpg');
INSERT INTO `detail_section`(item, item_key, url) VALUES (24, 9, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/967e8e1ef357e9722b796e2bcb09ba3d.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (24, 0, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/43c38eeffa556554c9b06301eb3e85b2.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (24, 1, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/92f556b605c4a84813070d7214c4f336.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (24, 2, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/538b8ab021c7814aa4af860d94f81287.jpg');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (24, 3, 'http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/adaef08ab0680b087096afa0f0070fad.jpg');
INSERT INTO `delivery_type`(item, delivery_type_name) VALUES (24, 'NATIONWIDE');
INSERT INTO `delivery_type`(item, delivery_type_name) VALUES (24, 'DAWN');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (24, 'TUE');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (24, 'WED');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (24, 'THU');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (24, 'FRI');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (24, 'SAT');

