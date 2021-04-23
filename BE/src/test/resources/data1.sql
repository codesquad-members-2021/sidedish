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

