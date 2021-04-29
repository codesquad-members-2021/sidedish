--best_category

INSERT INTO best_category(best_category_name) VALUES ('할인특가 세트상품');
INSERT INTO best_category(best_category_name) VALUES ('풍성한 고기반찬');
INSERT INTO best_category(best_category_name) VALUES ('편리한 반찬세트');
INSERT INTO best_category(best_category_name) VALUES ('간편한 덮밥요리');
INSERT INTO best_category(best_category_name) VALUES ('우리아이 영양반찬');
INSERT INTO best_category(best_category_name) VALUES ('해당없음');

--dish_category
INSERT INTO dish_category(dish_category_name) VALUES ('모두가 좋아하는 든든한 메인요리');
INSERT INTO dish_category(dish_category_name) VALUES ('정성이 담긴 뜨끈한 국물요리');
INSERT INTO dish_category(dish_category_name) VALUES ('식탁을 풍성하게 하는 정갈한 밑반찬');

--item table
INSERT INTO item(title, description, normal_price, sale_price, dish_category_id, best_category_id, stock, badge)
VALUES ('[소중한식사] 마라 한상차림', '알싸 ~ 한 마라 요리 세 가지를 한 번에 !', 39000, 31200, 1, 1, 5, '이벤트특가');
INSERT INTO item(title, description, normal_price, sale_price, dish_category_id, best_category_id, stock, badge)
VALUES ('[딩고] 시그니처 3 종 SET', '오늘 저녁은 이상하게 안주빨을 세워보고 싶다 !', 32800, 24000, 1, 1, 7, '이벤트특가');
INSERT INTO item(title, description, normal_price, sale_price, dish_category_id, best_category_id, stock, badge)
VALUES ('[집밥의완성] 초여름보양세트', '무더위에 대비하는 6 월 한상차림 초여름 보양세트', 26000, 18200, 1, 1, 6, '이벤트특가');
INSERT INTO item(title, description, normal_price, sale_price, dish_category_id, best_category_id, stock, badge)
VALUES ('[아내의쉐프] 아쉐찜닭', '아내의쉐프가 자신 있게 만들어서 이름도 아쉐찜닭입니다', 11900, 10700, 1, 2, 9, '이벤트특가, 론칭특가');
INSERT INTO item(title, description, normal_price, sale_price, dish_category_id, best_category_id, stock, badge)
VALUES ('[애슐리투고] 로스트 콤보 450 g', '립과 치킨이 만나 더욱 맛있게', 10900, 10900, 1, 2, 7, '론칭특가');
INSERT INTO item(title, description, normal_price, sale_price, dish_category_id, best_category_id, stock, badge)
VALUES ('[한옥집] 소갈비김치찜 2 인분', '부드러운 소갈비와 함께 푹 쪄낸 김치찜 !', 16500, 14850, 1, 2, 9, '이벤트특가');
INSERT INTO item(title, description, normal_price, sale_price, dish_category_id, best_category_id, stock, badge)
VALUES ('[동네부엌] 사계절 건강식단 작은상', '마포엄마들이 사랑해온 건강반찬', 24000, 24000, 1, 3, 10, '');
INSERT INTO item(title, description, normal_price, sale_price, dish_category_id, best_category_id, stock, badge)
VALUES ('[집밥의완성] 한상 가득 세트 (3 ~ 4 인)', '식단 정기배송으로 반찬고민 끝', 32000, 32000, 1, 3, 8, '');
INSERT INTO item(title, description, normal_price, sale_price, dish_category_id, best_category_id, stock, badge)
VALUES ('[옹가솜씨] 한끼뚝딱세트', '한 세트만 있으면 한 끼 뚝딱', 19500, 17500, 1, 3, 5, '이벤트특가');
INSERT INTO item(title, description, normal_price, sale_price, dish_category_id, best_category_id, stock, badge)
VALUES ('[옹가솜씨] 소고기쩜짜장 280 g', '짜장의 착한 변신', 7200, 7200, 1, 4, 3, '');
INSERT INTO item(title, description, normal_price, sale_price, dish_category_id, best_category_id, stock, badge)
VALUES ('[무명식당] 뿌리채소비빔밥 2 인분', '각종 뿌리채소를 듬뿍 넣어 지은 뿌리채소영양밥', 5000, 4750, 1, 4, 7, '이벤트특가');
INSERT INTO item(title, description, normal_price, sale_price, dish_category_id, best_category_id, stock, badge)
VALUES ('[미노리키친] 규동 250 g', '일본인의 소울푸드 ! 한국인도 좋아하는 소고기덮밥', 6500, 5200, 1, 4, 9, '이벤트특가');
INSERT INTO item(title, description, normal_price, sale_price, dish_category_id, best_category_id, stock, badge)
VALUES ('[빅마마의밥친구] 입맛감각 살려주는 유부토마토조림 200 g', '아이반찬과 다이어트 반찬으로 일석이조 !', 4900, 4900, 3, 5, 7, '');
INSERT INTO item(title, description, normal_price, sale_price, dish_category_id, best_category_id, stock, badge)
VALUES ('[동네부엌] 수제미트볼조림 300 g', '재료부터 다른 수제미트볼조림', 8700, 8700, 3, 5, 8, '');
INSERT INTO item(title, description, normal_price, sale_price, dish_category_id, best_category_id, stock, badge)
VALUES ('[Young313] 흰살생선 된장소스구이 200 g', '부드러운 명태살을 이용한 특별한 생선요리', 9800, 9800, 3, 5, 8, '');
INSERT INTO item(title, description, normal_price, sale_price, dish_category_id, best_category_id, stock, badge)
VALUES ('[빅마마의밥친구] 아삭 고소한 연근고기조림 250 g', '편식하는 아이도 좋아하는 건강한 연근조림', 5500, 5500, 1, 6, 17, '');
INSERT INTO item(title, description, normal_price, sale_price, dish_category_id, best_category_id, stock, badge)
VALUES ('[소중한식사] 골뱅이무침 195 g', '매콤새콤달콤, 반찬으로도 안주로도 좋은', 7000, 6300, 1, 6, 18, '이벤트특가');
INSERT INTO item(title, description, normal_price, sale_price, dish_category_id, best_category_id, stock, badge)
VALUES ('[옹가솜씨] 꽁치간장조림 240 g', '생강 향이 산뜻한', 5800, 5800, 1, 6, 15, '');
INSERT INTO item(title, description, normal_price, sale_price, dish_category_id, best_category_id, stock, badge)
VALUES ('[마더앤찬] 코다리구이 320 g', '큼지막하고 살집 많은 동태 한 마리로 만든 코다리구이입니다.', 7500, 6750, 1, 6, 14, '이벤트특가, 론칭특가');
INSERT INTO item(title, description, normal_price, sale_price, dish_category_id, best_category_id, stock, badge)
VALUES ('[남도애꽃] 반건조 문어조림 120 g', '씹을수록 감칠맛나는 문어살의 쫄깃함', 4600, 4600, 1, 6, 3, '');
INSERT INTO item(title, description, normal_price, sale_price, dish_category_id, best_category_id, stock, badge)
VALUES ('[마샐미디쉬] 매콤마늘쫑 해산물볶음 180 g', '탱글탱글한 새우와 오징어를 마늘쫑과 함께 매콤하게 볶아냈어요.', 6900, 6210, 1, 6, 5, '론칭특가');
INSERT INTO item(title, description, normal_price, sale_price, dish_category_id, best_category_id, stock, badge)
VALUES ('[빅마마의밥친구] 비빔오징어 150 g', '달콤한 신야초발효액이 포인트 !', 5000, 5000, 1, 6, 8, '');
INSERT INTO item(title, description, normal_price, sale_price, dish_category_id, best_category_id, stock, badge)
VALUES ('[수하동] 특곰탕 850 g', '100 % 한우양지로 끓여낸 70 년전통의 서울식곰탕', 15000, 14200, 2, 6, 5, '이벤트특가');
INSERT INTO item(title, description, normal_price, sale_price, dish_category_id, best_category_id, stock, badge)
VALUES ('[빅마마의밥친구] 된장찌개 900 g', '항아리에서 숙성시킨 집된장으로만 맛을내 짜지 않은 된장찌개', 10000, 10000, 2, 6, 3, '');
INSERT INTO item(title, description, normal_price, sale_price, dish_category_id, best_category_id, stock, badge)
VALUES ('[탐나는밥상] 동태탕 1000 g', '칼칼한 국물이 속 풀기에 딱 좋은 동태탕', 14000, 14000, 2, 6, 10, '');
INSERT INTO item(title, description, normal_price, sale_price, dish_category_id, best_category_id, stock, badge)
VALUES ('[국물닷컴] 치즈부대찌개 600 g', '안주용 부대찌개와는 달라 밥말아먹기 딱 좋은', 5500, 4300, 2, 6, 7, '이벤트특가');
INSERT INTO item(title, description, normal_price, sale_price, dish_category_id, best_category_id, stock, badge)
VALUES ('[집밥의완성] 스키야키 1.5 kg (2 ~ 3 인분)', '진한 풍미의 일본식 전골, 스키야키', 19800, 10000, 2, 6, 8, '이벤트특가');
INSERT INTO item(title, description, normal_price, sale_price, dish_category_id, best_category_id, stock, badge)
VALUES ('[새로미부산어묵] 프리미엄 어묵탕세트', '밀가루 0 % 프리미엄 어묵에 어묵스프까지 드려요 !', 18000, 14400, 2, 6, 3, '이벤트특가, 론칭특가');
INSERT INTO item(title, description, normal_price, sale_price, dish_category_id, best_category_id, stock, badge)
VALUES ('[모이세] 육개장 1 팩(600 g)', '제주3대해장국 맛집의 인기메뉴', 5900, 4400, 2, 6, 9, '론칭특가');
INSERT INTO item(title, description, normal_price, sale_price, dish_category_id, best_category_id, stock, badge)
VALUES ('[마더앤찬] 명란감자국 630 ml', '간간한 저염명란과 고소한 감자가 조화로운 국이에요', 7000, 6300, 2, 6, 7, '론칭특가');
INSERT INTO item(title, description, normal_price, sale_price, dish_category_id, best_category_id, stock, badge)
VALUES ('[마샐미디쉬] 유자소스 연근무침 250 g', '향긋한 유자향과 아삭한 연근', 6500, 6500, 3, 6, 7, '');
INSERT INTO item(title, description, normal_price, sale_price, dish_category_id, best_category_id, stock, badge)
VALUES ('[동네부엌] 쇠고기야채장조림 200 g', '부드러운 고기부터 밥비벼먹기 딱좋은 국물까지', 7400, 7400, 3, 6, 8, '');
INSERT INTO item(title, description, normal_price, sale_price, dish_category_id, best_category_id, stock, badge)
VALUES ('[소중한식사] 도라지초무침 150 g', '새콤달콤 입맛 돋우는', 4000, 4000, 3, 6, 4, '');
INSERT INTO item(title, description, normal_price, sale_price, dish_category_id, best_category_id, stock, badge)
VALUES ('[미노리키친] 일본식 우엉조림(킨피라고보) 80 g', '한국식 우엉조림과는 다른 진한 감칠맛', 3300, 3300, 3, 6, 10, '');
INSERT INTO item(title, description, normal_price, sale_price, dish_category_id, best_category_id, stock, badge)
VALUES ('[빅마마의밥친구] 갈치포무침 150 g', '쉽게 접할수 없는 꼬순내가득 갈치포 무침', 7000, 7000, 3, 6, 8, '');
INSERT INTO item(title, description, normal_price, sale_price, dish_category_id, best_category_id, stock, badge)
VALUES ('[마더앤찬] 명란치즈계란말이 230 g', '아이반찬으로 최고 계란말이', 4300, 3870, 3, 6, 9, '이벤트특가');
INSERT INTO item(title, description, normal_price, sale_price, dish_category_id, best_category_id, stock, badge)
VALUES ('[옹가솜씨] 달걀곤약조림 330 g', '칼로리 부담 쭉쭉 내린', 5800, 5800, 3, 6, 9, '');
INSERT INTO item(title, description, normal_price, sale_price, dish_category_id, best_category_id, stock, badge)
VALUES ('[너의반찬] 미소된장 고추무침 200 g', '고소한 양념 때문에 손이 자꾸 가요', 4500, 4500, 3, 6, 10, '');

-- image
INSERT INTO image(url, item_id) VALUES ('http://www.straightnews.co.kr/news/photo/201912/61797_33389_525.jpg',1);
INSERT INTO image(url, item_id) VALUES ('https://t1.daumcdn.net/cfile/blog/99AE493359F9CE5D24',1);
INSERT INTO image(url, item_id) VALUES ('https://file.mk.co.kr/meet/neds/2018/01/image_readtop_2018_476_15147648623153727.jpg',1);
INSERT INTO image(url, item_id) VALUES ('https://static.hubzum.zumst.com/hubzum/2019/03/08/16/556063497b6e4b329f1ada2dc9475e04.jpg',2);
INSERT INTO image(url, item_id) VALUES ('https://lh3.googleusercontent.com/proxy/dzDmRaaA3raCdhSMZervXK4CgCFxG21hHNQkR-d2gDkKr-dnB6jy9rQl50CuoSJ5AWANEhT4NzjrI_sfA9AUBL41FAqf3ME',2);
INSERT INTO image(url, item_id) VALUES ('https://mblogthumb-phinf.pstatic.net/MjAxOTA2MjRfODEg/MDAxNTYxMzc2MjA4NjU1.GD59hi3bg_9rJalZkD0Z__99FLNJn9hFS8LDv5Ip6l0g.Ny-1Awk69Dj9adJS9qNn3juanjyZQ6ppvWZqPCKDR6Ug.JPEG.hong595959/20190621_163159.jpg?type=w2',2);
INSERT INTO image(url, item_id) VALUES ('http://image.auction.co.kr/itemimage/1f/49/c8/1f49c85946.jpg',2);
INSERT INTO image(url, item_id) VALUES ('https://cdn.imweb.me/thumbnail/20200924/0d863f21d04ce.jpg',3);
INSERT INTO image(url, item_id) VALUES ('https://cdn.imweb.me/thumbnail/20200129/11d062f5c510f.jpg',3);
INSERT INTO image(url, item_id) VALUES ('https://recipe1.ezmember.co.kr/cache/recipe/2019/06/28/7deb64b55ff75fd05269e8dcb9f6c3e81.jpg',3);
INSERT INTO image(url, item_id) VALUES ('http://img.segye.com/content/image/2019/07/11/20190711512360.jpg',3);
INSERT INTO image(url, item_id) VALUES ('https://i.imgur.com/ler6Uhf.png',3);
INSERT INTO image(url, item_id) VALUES ('https://contents.lotteon.com/itemimage/_v120319/LF/15/16/69/1_/0/LF1516691_0_1.jpg/dims/resizef/720X720',3);
INSERT INTO image(url, item_id) VALUES ('https://images.squarespace-cdn.com/content/v1/52efff1fe4b0877bde888e3e/1606396705490-4ZM19FZF36MEBSHYVMCB/ke17ZwdGBToddI8pDm48kB80eW4KK5wgMfkTp6SjTNtZw-zPPgdn4jUwVcJE1ZvWQUxwkmyExglNqGp0IvTJZUJFbgE-7XRK3dMEBRBhUpxkEDnlqEYEiGVDb0kl5jpOJsm5iyfgdjNZyk67t96-U_4JMfIDDY8RGcVnRlrKExA/home-bongchu.jpg',4);
INSERT INTO image(url, item_id) VALUES ('http://image.auction.co.kr/itemimage/1c/40/8d/1c408d9cb1.jpg',4);
INSERT INTO image(url, item_id) VALUES ('http://gdimg.gmarket.co.kr/1854666978/still/280',4);
INSERT INTO image(url, item_id) VALUES ('http://img2.tmon.kr/cdn3/deals/2021/02/16/4289032702/catlist_3col_v2_e39e4_inzzy.jpg',4);
INSERT INTO image(url, item_id) VALUES ('https://recipe1.ezmember.co.kr/cache/data/goods/19/11/46/1000003960/1000003960_list_06.jpg',4);
INSERT INTO image(url, item_id) VALUES ('https://crcf.cookatmarket.com/product/images/2019/11/zahi_1574060111_9552.jpg',4);
INSERT INTO image(url, item_id) VALUES ('https://crcf.cookatmarket.com/product/images/2020/04/huma_1586424678_2549_720.jpg',5);
INSERT INTO image(url, item_id) VALUES ('https://img.siksinhot.com/place/1478504797742000.jpg',5);
INSERT INTO image(url, item_id) VALUES ('https://lh3.googleusercontent.com/proxy/Cq11C_7UnokVlg2M9jObMYC7I8thZ1zqjTk4Mkg_dwhO2L46WyZZlQ-pWyShfFV2gtWAF41vgl-QJF7CQZLOZkXHTvjnpfBVnc2OVsIRTdwbOa_CwqvE5s8KojuGCGIdNbLLJJapSacXEgeGAXTDJcgfAGqcxRX4tAppcOaWnbUxoGlPyn5aWzMQZgrmcaqauw',5);
INSERT INTO image(url, item_id) VALUES ('https://m.yorivery.com/data/goods/19/07/30//1000000783/1000000783_detail_177.jpg',6);
INSERT INTO image(url, item_id) VALUES ('https://cdn.lightning-ashe.com/wp-content/uploads/2017/10/DSC02028.jpg',6);
INSERT INTO image(url, item_id) VALUES ('https://img1.daumcdn.net/thumb/R720x0.q80/?scode=mtistory2&fname=http%3A%2F%2Fcfile25.uf.tistory.com%2Fimage%2F99BE484D5C5FEA291891B7',6);
INSERT INTO image(url, item_id) VALUES ('https://upload.wikimedia.org/wikipedia/commons/1/10/Banchan_2.jpg',7);
INSERT INTO image(url, item_id) VALUES ('http://mydinner.co.kr/web/product/big/201809/f66fcfa2cc6c85f6ae486a29f5979b9b.jpg',7);
INSERT INTO image(url, item_id) VALUES ('http://mydinner.co.kr/web/product/big/201809/24b0a19ca5b137d4d046701829a7d9c8.jpg',7);
INSERT INTO image(url, item_id) VALUES ('https://recipe1.ezmember.co.kr/cache/recipe/2017/07/10/24502c34ab4f7fe1af89e7a0225a52dc1.jpg',7);
INSERT INTO image(url, item_id) VALUES ('http://vrthumb.clipartkorea.co.kr/2019/01/07/tica101m18110205.jpg',8);
INSERT INTO image(url, item_id) VALUES ('https://dispatch.cdnser.be/wp-content/uploads/2018/04/ally_2018-04-24_10-10-14_986160.png',8);
INSERT INTO image(url, item_id) VALUES ('https://recipe1.ezmember.co.kr/cache/recipe/2019/03/03/6a72d77a1e49adbbe88ccbabebd0b7b31.jpg',8);
INSERT INTO image(url, item_id) VALUES ('https://api.orderyo.co.kr/image/store/5E969EA53E8',9);
INSERT INTO image(url, item_id) VALUES ('https://pds.joins.com/news/component/htmlphoto_mmdata/201908/27/9081355e-5c2e-491c-9070-e124d8878c90.jpg',9);
INSERT INTO image(url, item_id) VALUES ('https://www.noodlelovers.com/upload_data/m_product_noodle_set/shutterstock_543369610.jpg',10);
INSERT INTO image(url, item_id) VALUES ('https://pds.joins.com/news/component/htmlphoto_mmdata/201510/27/htm_2015102710446621668.jpg',10);
INSERT INTO image(url, item_id) VALUES ('https://i.ytimg.com/vi/thD7PlACa14/maxresdefault.jpg',10);
INSERT INTO image(url, item_id) VALUES ('https://t1.daumcdn.net/liveboard/realfood/83da4bd708ac4d3b920c77819d045c25.jpg',11);
INSERT INTO image(url, item_id) VALUES ('https://health.chosun.com/site/data/img_dir/2020/11/03/2020110301808_0.jpg',11);
INSERT INTO image(url, item_id) VALUES ('https://lh3.googleusercontent.com/proxy/29SzHuZ04RyWoc8oS61bugSMxTkSVnvmUJd-fobHt4YWBhPOldzFkQUJp3KDlPRXpScVPW95KY5dPoLNae_1YXmpIfoYX_1mb02wQTi0Oy8JXZHgDcmYuX6SYZitURvL_82_kv2I0wpiyHnVTg',11);
INSERT INTO image(url, item_id) VALUES ('https://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg',12);
INSERT INTO image(url, item_id) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg,',12);
INSERT INTO image(url, item_id) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg,',12);
INSERT INTO image(url, item_id) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg',12);
INSERT INTO image(url, item_id) VALUES ('https://m.cj.co.kr/images/theKitchen/PHON/0000002408/0000010356/0000002408.jpg',13);
INSERT INTO image(url, item_id) VALUES ('https://post-phinf.pstatic.net/MjAxODA3MjZfMzEg/MDAxNTMyNTkwMTkxODA5.lyQBcu2up62yariQzbV8U2BrMEjOh1W6EWCiG42dGwEg.sx7smYgGrN7tuUjCz_UP0iANrGpwXfSJ9K9AdQWM9wUg.PNG/image.png?type=w1200',13);
INSERT INTO image(url, item_id) VALUES ('http://img-cf.kurly.com/shop/data/goodsview/20180207/gv30000017576_1.jpg',13);
INSERT INTO image(url, item_id) VALUES ('http://www.ant-news.co.kr/news/photo/202010/12466_13532_16.png',14);
INSERT INTO image(url, item_id) VALUES ('https://blog.kakaocdn.net/dn/xnG4D/btqxZSXIx9b/LGDUUCRPapPSWrtKXIoock/img.jpg',14);
INSERT INTO image(url, item_id) VALUES ('https://image.freepik.com/free-photo/appetizing-chicken-meatballs-in-tomato-sauce-meatballs-in-a-pan-on-a-dark-table-chicken-cutlets-in-tomato-meat-dish_140840-158.jpg',14);
INSERT INTO image(url, item_id) VALUES ('https://cdn.imweb.me/thumbnail/20201001/7c205dc8f3359.png',15);
INSERT INTO image(url, item_id) VALUES ('https://recipe1.ezmember.co.kr/cache/recipe/2018/02/09/a92201aa0c5a90d64036e525bc2b47a41.jpg',15);
INSERT INTO image(url, item_id) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0f95f44ea8e2e7930321def493753a48.jpg',16);
INSERT INTO image(url, item_id) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/2d408898494ac950d7d2cfd6c36d59c2.jpg',16);
INSERT INTO image(url, item_id) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/62c8bb77facfc9c3be81f9bf45b27f2a.jpg',16);
INSERT INTO image(url, item_id) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/f6d73afc0ebc1efa71eaea32e9d846f2.jpg',16);
INSERT INTO image(url, item_id) VALUES ('http://public.codesquad.kr/jk/storeapp/data/cad8eee316cf7151e07638aa57b32a9d.jpg',17);
INSERT INTO image(url, item_id) VALUES ('https://thumbnail8.coupangcdn.com/thumbnails/remote/492x492ex/image/vendor_inventory/0db2/50bda73ed88a032cc47338eb982a6af50eca8394b9f20a83fc05e516bbcf.jpg',17);
INSERT INTO image(url, item_id) VALUES ('https://thumbnail10.coupangcdn.com/thumbnails/remote/q89/image/vendor_inventory/5350/674ba13304070d8306e27df72bf142f7709c0f9d3366e05d94278967d10f.jpg',17);
INSERT INTO image(url, item_id) VALUES ('https://thumbnail6.coupangcdn.com/thumbnails/remote/q89/image/vendor_inventory/4db2/18ac31f75a0a8ba109b8c787fe2d951849cedc1d99727273a29db4136855.jpg',17);
INSERT INTO image(url, item_id) VALUES ('http://public.codesquad.kr/jk/storeapp/data/b6beada6b89af950289003d929936d9c.jpg',18);
INSERT INTO image(url, item_id) VALUES ('http://www.sisterkitchen.co.kr/uploads/pw1602004/201809/5666c2164340b099eb3c2666e15ea1ff_crop.jpg',18);
INSERT INTO image(url, item_id) VALUES ('https://mblogthumb-phinf.pstatic.net/20160923_118/guebyul_1474620868146bmsos_PNG/%BD%BA%C5%A9%B8%B0%BC%A6_2016-09-23_%BF%C0%C8%C4_5.24.39.png?type=w800',18);
INSERT INTO image(url, item_id) VALUES ('https://img1.daumcdn.net/thumb/R720x0.q80/?scode=mtistory2&fname=http%3A%2F%2Fcfile24.uf.tistory.com%2Fimage%2F15134A4A50B22D3608696F',18);
INSERT INTO image(url, item_id) VALUES ('http://public.codesquad.kr/jk/storeapp/data/0221110ead70dfd455e40703bbdd6252.jpg',19);
INSERT INTO image(url, item_id) VALUES ('https://t1.daumcdn.net/cfile/tistory/221E2C3450F401FD1E',19);
INSERT INTO image(url, item_id) VALUES ('https://asset02.flavr.co.kr/media/common/cache/b23c90228c5a3d2ea348cfc006f80fbb/product/600x400/17f82f742ffe127f42dca9de82fb58b1_d_1_16.jpg',19);
INSERT INTO image(url, item_id) VALUES ('https://cphoto.asiae.co.kr/listimglink/6/2016032411041100033_1.jpg',19);
INSERT INTO image(url, item_id) VALUES ('http://public.codesquad.kr/jk/storeapp/data/385f4106ac26f6e4fe7c640714f405a5.jpg',20);
INSERT INTO image(url, item_id) VALUES ('https://ndflowerfish.wisacdn.com/_data/product/201711/13/d1dd8f4a54bf697a3dd12053547e68e4.jpg',20);
INSERT INTO image(url, item_id) VALUES ('https://recipe1.ezmember.co.kr/cache/recipe/2019/12/31/b71bbd57f3d722afefb9ea661fd8cd4c1.jpg',20);
INSERT INTO image(url, item_id) VALUES ('https://recipe1.ezmember.co.kr/cache/recipe/2015/04/10/c281917bbf0030de633eaf7a0762e11d1.jpg',20);
INSERT INTO image(url, item_id) VALUES ('http://public.codesquad.kr/jk/storeapp/data/2455226945d52f5aefd51f35d663bb16.jpg',21);
INSERT INTO image(url, item_id) VALUES ('https://recipe1.ezmember.co.kr/cache/recipe/2019/03/07/de53770e6b5f8c0497346b11d7ad6c971.jpg',21);
INSERT INTO image(url, item_id) VALUES ('https://recipe1.ezmember.co.kr/cache/recipe/2017/04/07/602de02c50e267e0974e799ce04500ec1.jpg',21);
INSERT INTO image(url, item_id) VALUES ('https://t1.daumcdn.net/cfile/tistory/231E193B5728B86E20',21);
INSERT INTO image(url, item_id) VALUES ('http://public.codesquad.kr/jk/storeapp/data/bc3b777115e8377a48c7bd762fe5fdc9.jpg',22);
INSERT INTO image(url, item_id) VALUES ('https://beatmarket.speedgabia.com/page/171117_16_2.jpg',22);
INSERT INTO image(url, item_id) VALUES ('https://beatmarket.speedgabia.com/page/171117_16_4.jpg',22);
INSERT INTO image(url, item_id) VALUES ('http://m.mfv.co.kr/web/product/big/201502/37_shop1_595651.jpg',22);
INSERT INTO image(url, item_id) VALUES ('https://public.codesquad.kr/jk/storeapp/data/d1fccf125f0a78113d0e06cb888f2e74.jpg',23);
INSERT INTO image(url, item_id) VALUES ('https://post-phinf.pstatic.net/MjAxODA0MTZfMTU2/MDAxNTIzODY2ODcxNjU4.P32Oy80beQAYaCIOBNaAuV0l3Otp6YKNBeXU4M0aYe4g.boG9McCGBdmlAt8SVdulUovnCuujCOMTVYCtR9wQfp0g.PNG/%ED%81%AC%EA%B8%B0%EB%B3%80%ED%99%98_2018-04-16_17%3B18%3B19.PNG?type=w1200',23);
INSERT INTO image(url, item_id) VALUES ('https://ai.esmplus.com/foodjang01/images/331500565_b_1.jpg',23);
INSERT INTO image(url, item_id) VALUES ('http://img.newspim.com/content/image/2015/11/18/20151118000159_0.jpg',23);
INSERT INTO image(url, item_id) VALUES ('https://static.coupangcdn.com/image/vendor_inventory/7ba7/ac099e963ffffad4fc57b2f8ead2217858759d40ac31c7c460df0ce5cf5d.jpg',23);
INSERT INTO image(url, item_id) VALUES ('http://public.codesquad.kr/jk/storeapp/data/c069bc32cb37727c59e1f0c2839311a0.jpg',24);
INSERT INTO image(url, item_id) VALUES ('https://www.ghostfreshmart.com/wp-content/uploads/2020/04/%EC%B0%A8%EB%8F%8C%EB%90%9C%EC%9E%A5%EC%B0%8C%EA%B0%9C.jpg',24);
INSERT INTO image(url, item_id) VALUES ('http://image.auction.co.kr/itemimage/20/98/cb/2098cb0636.jpg',24);
INSERT INTO image(url, item_id) VALUES ('https://lh3.googleusercontent.com/proxy/Uk4fjrCmeGw5CwvR4ZhfnkDGDOj60kp9XM6-iv9ToQS4BvzlmM2UMNjx5B0nVa0IL826VbhurF2oMmhAuVNYS93uNkEODJp0PmDkLMLFRGhh6MdYt9V2fyW4iZzi_BHHoOnaOOLBLljXb6c_1jVhq27vvzsjzYeUv8VIDr5q1rEJK5qka58',24);
INSERT INTO image(url, item_id) VALUES ('https://doctorkitchen-media.s3.amazonaws.com/products/group/img_detail_%E1%84%80%E1%85%A9%E1%84%80%E1%85%B5%E1%84%83%E1%85%B3%E1%86%B7%E1%84%88%E1%85%AE%E1%86%A8%E1%84%83%E1%85%AC%E1%86%AB%E1%84%8C%E1%85%A1%E1%86%BC%E1%84%8D%E1%85%B5%E1%84%80%E1%85%A2_3.jpg',24);
INSERT INTO image(url, item_id) VALUES ('http://public.codesquad.kr/jk/storeapp/data/f31fc3f5828c27ff60e4cf89a862d31c.jpg',25);
INSERT INTO image(url, item_id) VALUES ('https://img-cf.kurly.com/shop/data/goodsview/20180912/gv30000031970_1.jpg',25);
INSERT INTO image(url, item_id) VALUES ('http://image.babosarang.co.kr/product/detail/MMB/2011121636082131/_600.jpg',25);
INSERT INTO image(url, item_id) VALUES ('http://www.62life.com/images/gdimg/93010901(3).jpg',25);
INSERT INTO image(url, item_id) VALUES ('http://image.kyobobook.co.kr/newimages/giftshop_new/goods/400/1616/hot1586849727069.jpg',25);
INSERT INTO image(url, item_id) VALUES ('http://public.codesquad.kr/jk/storeapp/data/6edbb16da52708e8533b85fbf743f882.jpg',26);
INSERT INTO image(url, item_id) VALUES ('https://dimg.donga.com/wps/NEWS/IMAGE/2017/03/29/83592836.3.jpg',26);
INSERT INTO image(url, item_id) VALUES ('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_VbazLjf4cj3R7eGp7q2ug-UxcpyPpeMTBA&usqp=CAU',26);
INSERT INTO image(url, item_id) VALUES ('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiyBrROGtL2LtLbuSoD0LA70aW8k9HuI2r2Q&usqp=CAU',26);
INSERT INTO image(url, item_id) VALUES ('https://www.dgfood.co.kr/shopimages/dlive2020/0010030000153.jpg',26);
INSERT INTO image(url, item_id) VALUES ('http://public.codesquad.kr/jk/storeapp/data/892f3e7f043bfa7dbbcd58f88eecac36.jpg',27);
INSERT INTO image(url, item_id) VALUES ('https://rimage.gnst.jp/livejapan.com/public/article/detail/a/00/00/a0000346/img/basic/a0000346_main.jpg',27);
INSERT INTO image(url, item_id) VALUES ('https://rimage.gnst.jp/livejapan.com/public/article/detail/a/20/00/a2000278/img/basic/a2000278_main.jpg?20210119142424&q=80&rw=750&rh=536',27);
INSERT INTO image(url, item_id) VALUES ('https://www.foodnews.news/data/photos/20200937/art_15995248145581_58ee97.png',27);
INSERT INTO image(url, item_id) VALUES ('https://static.hubzum.zumst.com/hubzum/2018/01/29/11/f2704d25d1504e86821c86878d4f7f66.jpg',27);
INSERT INTO image(url, item_id) VALUES ('http://public.codesquad.kr/jk/storeapp/data/ae571e13d18fd4f0f40d685d2c8fe8f1.jpg',28);
INSERT INTO image(url, item_id) VALUES ('https://lh3.googleusercontent.com/proxy/2vhkZFZKG-wq7z0zBQk-NLP2pJBPHHXqJ5l5zlfFs1PCOjEXnIAMn1VS4g_pJbdJiH_2dY1dTO_9Src4pZQrd3GYrcnP6ji36jUpjWp4UYsos3bOf-sG41UXOxkmGzA-S7eoRj8kv1DbP54Y4Dr65gwftoHwyGwpDQ',28);
INSERT INTO image(url, item_id) VALUES ('https://recipe1.ezmember.co.kr/cache/recipe/2016/12/02/dbd73e6d5327feec3c2a8ee8aa6900871.jpg',28);
INSERT INTO image(url, item_id) VALUES ('https://cdn.onul-hoi.com/uploads/store_package/image/477/c3d724_210311054224.jpg',28);
INSERT INTO image(url, item_id) VALUES ('https://lh3.googleusercontent.com/proxy/MZJGCeEdS68sQFErX_AgSO4rynz36zp8fv-5uL_HhblZftcrHvVSHSkaf-xW1ziEhEgFyLHc7Hml-W5XaMgz85eFUg4J1GqvDccIhbJUhxuL3fjvotMX_MemdWOnXTJrJwLS3O8S-ya9SKVXxUJ6m9TvrJjogvID5pK3c_TdUjgL',28);
INSERT INTO image(url, item_id) VALUES ('http://public.codesquad.kr/jk/storeapp/data/8fd330b5f5dbccbcbf4f5731e5e9e29b.jpg',29);
INSERT INTO image(url, item_id) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/f945d8ac1dccc3f931bcaf35de5de582.jpg',29);
INSERT INTO image(url, item_id) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/bacb0b8186371bfafbd92dbeec718e13.jpg',29);
INSERT INTO image(url, item_id) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b96b02e9a956c6d5ad1e10eb14ba81e0.jpg',29);
INSERT INTO image(url, item_id) VALUES ('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSihO_rpYAI_OcKOJXCc3VN1IS8ro4QsBrEaw&usqp=CAU',29);
INSERT INTO image(url, item_id) VALUES ('http://public.codesquad.kr/jk/storeapp/data/2416b58044d49f0d3a24256f8e76163b.jpg',30);
INSERT INTO image(url, item_id) VALUES ('https://so-sim.com/data/product/view/161536304181_1.jpg',30);
INSERT INTO image(url, item_id) VALUES ('https://so-sim.com/data/product/view/161536304181_3.jpg',30);
INSERT INTO image(url, item_id) VALUES ('https://so-sim.com/data/product/view/161536304181_4.jpg',30);
INSERT INTO image(url, item_id) VALUES ('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQK4liNHOktBkLCUkTzvquPDaKPINu-IPcu1w&usqp=CAU',30);
INSERT INTO image(url, item_id) VALUES ('http://public.codesquad.kr/jk/storeapp/data/fdb0d5fcfb86e332505785225a6d9ade.jpg',31);
INSERT INTO image(url, item_id) VALUES ('http://public.codesquad.kr/jk/storeapp/data/e5646e5fc09a01a9243979b229e0572b.jpg',32);
INSERT INTO image(url, item_id) VALUES ('https://public.codesquad.kr/jk/storeapp/data/4cfd1954861ebd18b5b53e558a8e902e.jpg',33);
INSERT INTO image(url, item_id) VALUES ('http://public.codesquad.kr/jk/storeapp/data/422befe07f7e2860b9a83a8d7049ec2e.jpg',34);
INSERT INTO image(url, item_id) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/c8c8045696b4692107ef28c8b445ca42.jpg',34);
INSERT INTO image(url, item_id) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/edc6bae2e2663f05b4e8eb5a2b95d68f.jpg',34);
INSERT INTO image(url, item_id) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/c935f5913dc66b11ebceeef85485c438.jpg',34);
INSERT INTO image(url, item_id) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/7c1e24867611394f04b37d05593e21ba.jpg',34);
INSERT INTO image(url, item_id) VALUES ('http://public.codesquad.kr/jk/storeapp/data/d0b5d2be962947d9534e2140d1b34b2d.jpg',35);
INSERT INTO image(url, item_id) VALUES ('http://public.codesquad.kr/jk/storeapp/data/f6817349118d4c671da8dca9065649a9.jpg',36);
INSERT INTO image(url, item_id) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/43c38eeffa556554c9b06301eb3e85b2.jpg',36);
INSERT INTO image(url, item_id) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/92f556b605c4a84813070d7214c4f336.jpg',36);
INSERT INTO image(url, item_id) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/538b8ab021c7814aa4af860d94f81287.jpg',36);
INSERT INTO image(url, item_id) VALUES ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/adaef08ab0680b087096afa0f0070fad.jpg',36);
INSERT INTO image(url, item_id) VALUES ('http://public.codesquad.kr/jk/storeapp/data/757878b14ee5a8d5af905c154fc38f01.jpg',37);
INSERT INTO image(url, item_id) VALUES ('http://public.codesquad.kr/jk/storeapp/data/043cf496f07899e7515f761e29d1ffa9.jpg',38);
