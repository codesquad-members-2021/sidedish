--best_category

INSERT INTO best_category(best_category_name) VALUES ("할인특가 세트상품");
INSERT INTO best_category(best_category_name) VALUES ("풍성한 고기반찬");
INSERT INTO best_category(best_category_name) VALUES ("편리한 반찬세트");
INSERT INTO best_category(best_category_name) VALUES ("간편한 덮밥요리");
INSERT INTO best_category(best_category_name) VALUES ("우리아이 영양반찬");
INSERT INTO best_category(best_category_name) VALUES ("해당없음");


--dish_category
INSERT INTO dish_category(dish_category_name) VALUES ("든든한 메인요리");
INSERT INTO dish_category(dish_category_name) VALUES ("뜨끈한 국물요리");
INSERT INTO dish_category(dish_category_name) VALUES ("정갈한 밑찬반");


--item
INSERT INTO item(title, description, n_price, s_price, dish_category_id, best_category_id, stock, badge)
    VALUES ("[소중한식사] 경상도 한상차림", "오늘 저녁은 이상하게 안주빨을 세워보고 싶다!", 39000, 31200,1, 1, 20, "이벤트 특가");
INSERT INTO item(title, description, n_price, s_price, dish_category_id, best_category_id, stock, badge)
    VALUES ("[집밥의완성]초여름보양세트", "무더위에 대비하는 6월 한상차림 초여름 보양세트", 26000, 18200, 2, 2, 20, "이벤트 특가");
INSERT INTO item(title, description, n_price, s_price, dish_category_id, best_category_id, stock, badge)
    VALUES ("[아내의쉐프] 아쉐찜닭", "아내의쉐프가 자신 있게 만들어서 이름도 '아쉐찜닭'입니다", 11900, 10700, 2, 3, 20, "이벤트 특가");
INSERT INTO item(title, description, n_price, s_price, dish_category_id, best_category_id, stock, badge)
    VALUES ("[애슐리투고] 로스트 콤보 450g", "립과 치킨이 만나  더욱 맛있게", 10900, 10900, 2, 4, 20, "이벤트 특가");
INSERT INTO item(title, description, n_price, s_price, dish_category_id, best_category_id, stock, badge)
    VALUES ("title5", "discription5", 50000, 40000, 2, 5, 20, "이벤트 특가");


--image
--경상도 한상 차림
INSERT INTO image(url,item_id) VALUES('https://cdn.bmf.kr/_data/product/H9881/f2a7b4df359c850b1a9eb57e17ddf6fc.jpg',1);
INSERT INTO image(url,item_id) VALUES('https://cdn.bmf.kr/_data/product/H9881/fbf29077698ca16f8050e43476b47f38.jpg',1);
INSERT INTO image(url,item_id) VALUES('https://cdn.bmf.kr/_data/product/H9881/c96c6949efc3391148e9b280a2c5ed0b.jpg',1);
INSERT INTO image(url,item_id) VALUES('https://cdn.bmf.kr/_data/product/H9881/71411e15d2d961df496f87f08648b345.jpg',1);

-- 초여름 보양세트
INSERT INTO image(url,item_id) VALUES('https://cdn.bmf.kr/_data/product/H7F20/fc5f385335b5d840be70b0cf612d0740.jpg',2);
INSERT INTO image(url,item_id) VALUES('https://cdn.bmf.kr/_data/product/H7F20/fc5f385335b5d840be70b0cf612d0740.jpg',2);
INSERT INTO image(url,item_id) VALUES('https://cdn.bmf.kr/_data/product/H7F20/ad8d4ecbdc341c7ff2cf6042e64437fb.jpg',2);
INSERT INTO image(url,item_id) VALUES('https://cdn.bmf.kr/_data/product/H7F20/76b6f0595fbdbcf8424406cc65463a2d.jpg',2);

-- 아쉐찜닭
INSERT INTO image(url,item_id) VALUES('https://cdn.bmf.kr/_data/product/HA567/739d2ed2a9c963dc616db52580de695d.jpg',3);
INSERT INTO image(url,item_id) VALUES('https://cdn.bmf.kr/_data/product/HA567/739d2ed2a9c963dc616db52580de695d.jpg',3);
INSERT INTO image(url,item_id) VALUES('https://cdn.bmf.kr/_data/product/HA567/9d2d191ddbc0555ae96ed7e8ec4c95e3.jpg',3);
INSERT INTO image(url,item_id) VALUES('https://cdn.bmf.kr/_data/product/HA567/f14a921e2abc277c7f2033d34155f372.jpg',3);

-- 애슐리투고
INSERT INTO image(url,item_id) VALUES('https://cdn.bmf.kr/_data/product/H206E/de61f1b996cb6a0c5e797b55178307f5.jpg',4);




