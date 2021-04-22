CREATE TABLE IF NOT EXISTS `section` (
    `id`  BIGINT AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS category (
    `id`  BIGINT AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS item (
    `id`  BIGINT AUTO_INCREMENT PRIMARY KEY,
    `section` BIGINT,
    `category` BIGINT,
    `alt` VARCHAR(50),
    `top_image` VARCHAR(255),
    `title` VARCHAR(50),
    `description` VARCHAR(500),
    `n_price` DECIMAL,
    `s_price` DECIMAL,
    `delivery_fee` DECIMAL,
    `stock` int,
    CONSTRAINT item_section_foreign_key FOREIGN KEY (`section`) REFERENCES `section`(id),
    CONSTRAINT item_category_foreign_key FOREIGN KEY (`category`) REFERENCES `category`(id)
);

CREATE TABLE IF NOT EXISTS detail_section (
    `item` BIGINT,
    `item_key` INT,
    `url` VARCHAR(255),
    CONSTRAINT detail_section_item_foreign_key FOREIGN KEY (`item`) REFERENCES `item`(id)
);

CREATE TABLE IF NOT EXISTS thumb_image (
    `item` BIGINT,
    `item_key` INT,
    `url` VARCHAR(255),
    CONSTRAINT thumb_image_item_foreign_key FOREIGN KEY (`item`) REFERENCES `item`(id)
);

CREATE TABLE IF NOT EXISTS badge (
    `item` BIGINT,
    `badge_type` CHAR(10),
    CONSTRAINT badge_item_foreign_key FOREIGN KEY (`item`) REFERENCES `item`(id)
);


CREATE TABLE IF NOT EXISTS delivery_type (
    `item` BIGINT,
    `delivery_type_name` CHAR(10),
    CONSTRAINT delivery_type_item_foreign_key FOREIGN KEY (`item`) REFERENCES `item`(id)
);


CREATE TABLE IF NOT EXISTS delivery_day (
    `item` BIGINT,
    `the_day_of_week` CHAR(3),
    CONSTRAINT delivery_day_item_foreign_key FOREIGN KEY (`item`) REFERENCES `item`(id)
);
