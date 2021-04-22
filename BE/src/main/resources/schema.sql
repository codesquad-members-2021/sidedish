USE
SIDEDISH;
DROP TABLE IF EXISTS CATEGORY;
DROP TABLE IF EXISTS DISH;
DROP TABLE IF EXISTS PRICES;
DROP TABLE IF EXISTS BADGES;
DROP TABLE IF EXISTS THUMB_IMAGES;
DROP TABLE IF EXISTS DETAIL_IMAGES;


CREATE TABLE CATEGORY
(
    ID            bigint(20) auto_increment primary key,
    CATEGORY_TYPE varchar(100)
);

CREATE TABLE DISH
(
    ID            bigint(20) auto_increment primary key,
    NAME          varchar(50),
    TOP_IMAGE     varchar (100),
    DESCRIPTION   varchar(100),
    PRICES        varchar(100),
    BADGES        varchar (100),
    STOCK         bigint(20),
    POINT         int,
    DELIVERY_INFO varchar(100),
    THUMB_IMAGES  varchar (500),
    DETAIL_IMAGES varchar (500),
    CATEGORY      bigint(20) references CATEGORY (id),
    CATEGORY_KEY  int
);
