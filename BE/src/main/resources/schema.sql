USE SIDEDISH;

DROP TABLE IF EXISTS CATEGORY;
DROP TABLE IF EXISTS DISH;

CREATE TABLE CATEGORY
(
    ID            bigint(20) auto_increment primary key,
    TITLE varchar(100)
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
    THUMB_IMAGES  varchar (1000),
    DETAIL_IMAGES varchar (1000),
    CATEGORY      bigint(20) references CATEGORY (ID),
    CATEGORY_KEY  int
);



