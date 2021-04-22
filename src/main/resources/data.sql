INSERT INTO sidedish.CATEGORY(NAME) VALUE ('할인특가 세트상품');
INSERT INTO sidedish.CATEGORY(NAME) VALUE ('풍성한 고기반찬');
INSERT INTO sidedish.CATEGORY(NAME) VALUE ('바다향가득 반찬');
INSERT INTO sidedish.CATEGORY(NAME) VALUE ('편리한 반찬세트');
INSERT INTO sidedish.CATEGORY(NAME) VALUE ('간편한 덮밥요리');
INSERT INTO sidedish.CATEGORY(NAME) VALUE ('우리아이영양반찬');

INSERT INTO sidedish.ITEM(ID, IMAGE, DELIVERY, TITLE, DESCRIPTION, PRICE, BADGE, STOCK, CATEGORY_KEY, CATEGORY_ID)
    VALUE ('H9881',
    'https://cdn.bmf.kr/_data/product/H9881/f2a7b4df359c850b1a9eb57e17ddf6fc.jpg',
    '새벽배송,전국택배',
    '[소중한식사] 경상도 한상차림',
    '경상도 명물 요리 세 가지를 한 상에!',
    39000,
    '이벤트특가',
    10,
    1,
    1);

