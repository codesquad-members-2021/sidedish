CREATE TABLE IF NOT EXISTS `section`
(
    id  BIGINT AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS category
(
    id  BIGINT AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(50)
    );

CREATE TABLE IF NOT EXISTS item
(
    id  BIGINT AUTO_INCREMENT PRIMARY KEY,
    section BIGINT,
    category BIGINT,
    alt VARCHAR(50),
    top_image VARCHAR(65536),
    title VARCHAR(50),
    description VARCHAR(500),
    n_price DECIMAL,
    s_price DECIMAL,
    delivery_fee DECIMAL,
    stock int
);

CREATE TABLE IF NOT EXISTS detail_section
(
    item BIGINT,
    item_key INT,
    url VARCHAR(65536)
);

CREATE TABLE IF NOT EXISTS thumb_image
(
    item BIGINT,
    item_key INT,
    url VARCHAR(65536)
);

CREATE TABLE IF NOT EXISTS badge (
    item BIGINT,
    `name` CHAR(10)
);


CREATE TABLE IF NOT EXISTS delivery_type
(
    item BIGINT,
    `name` CHAR(10)
);


CREATE TABLE IF NOT EXISTS delivery_day
(
    item BIGINT,
    `name` CHAR(3)
);









