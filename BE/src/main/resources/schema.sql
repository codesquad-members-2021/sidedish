USE SIDEDISH;

DROP TABLE IF EXISTS CATEGORY;
DROP TABLE IF EXISTS DISH;
DROP TABLE IF EXISTS PRICE;
DROP TABLE IF EXISTS BADGE;
DROP TABLE IF EXISTS THUMB_IMAGE;
DROP TABLE IF EXISTS DETAIL_IMAGE;


CREATE TABLE CATEGORY
(
    ID    bigint(20) auto_increment primary key,
    TITLE varchar(100)
);

CREATE TABLE DISH
(
    ID            bigint(20) auto_increment primary key,
    NAME          varchar(50),
    TOP_IMAGE     varchar(200),
    DESCRIPTION   varchar(100),
    STOCK         bigint(20),
    POINT         int,
    DELIVERY_INFO varchar(100),
    CATEGORY      bigint(20) references CATEGORY (ID),
    CATEGORY_KEY  int
);

CREATE TABLE PRICE
(
    PRICE    int,
    DISH     bigint(20) references DISH (ID),
    DISH_KEY int
);

CREATE TABLE BADGE
(
    BADGE    varchar(50),
    DISH     bigint(20) references DISH (ID),
    DISH_KEY int
);

CREATE TABLE THUMB_IMAGE
(
    THUMB_IMAGE varchar(500),
    DISH        bigint(20) references DISH (ID),
    DISH_KEY    int
);

CREATE TABLE DETAIL_IMAGE
(
    DETAIL_IMAGE varchar(500),
    DISH         bigint(20) references DISH (ID),
    DISH_KEY     int
);


