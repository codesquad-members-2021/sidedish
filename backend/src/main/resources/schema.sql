DROP TABLE if EXISTS sidedish.dish;

ALTER DATABASE sidedish DEFAULT CHARACTER SET utf8;
SET time_zone = 'Asia/Seoul';

CREATE TABLE sidedish.dish (
                               detail_hash VARCHAR(10) PRIMARY KEY,
                               image VARCHAR(100) NOT NULL,
                               alt VARCHAR(50) NOT NULL,
                               delivery_type VARCHAR(50) NOT NULL,
                               title VARCHAR(50) NOT NULL,
                               description VARCHAR(50) NOT NULL,
                               n_price INT NOT NULL,
                               s_price INT NOT NULL,
                               badge VARCHAR(50) NOT NULL,
                               created_date datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT="Any dish";


INSERT INTO sidedish.dish (
    detail_hash,
    image,
    alt,
    delivery_type,
    title,
    description,
    n_price,
    s_price,
    badge,
    created_date)
VALUES
(
    "H9881",
    "https://cdn.bmf.kr/_data/product/H9881/f2a7b4df359c850b1a9eb57e17ddf6fc.jpg",
    "[소중한식사] 경상도 한상차림",
    "[새벽배송, 전국택배]",
    "[소중한식사] 경상도 한상차림",
    "경상도 명물 요리 세 가지를 한 상에!",
    39000,
    31200,
    "이벤트특가",
    now()
),
(
    "HDF4C",
    "https://cdn.bmf.kr/_data/product/HDF4C/954b78f9111bbef54ede9fdcdf1298d8.jpg",
    "[딩고] 시그니처 3종 SET",
    "[새벽배송, 전국택배]",
    "[딩고] 시그니처 3종 SET",
    "오늘 저녁은 이상하게 안주빨을 세워보고 싶다!",
    32800,
    24000,
    "이벤트특가",
    now()
),
(
    "",
    "",
    "",
    "",
    "",
    "",
    1,
    2,
    "",
    now()
);
