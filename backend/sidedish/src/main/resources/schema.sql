DROP TABLE IF EXISTS  image, item, dish_category, best_category;

CREATE TABLE IF NOT EXISTS dish_category(
                dish_category_id int auto_increment primary key,
                dish_category_name varchar(45)
)DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS best_category(
                best_category_id int auto_increment primary key,
                best_category_name varchar(45)
)DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS item(
                item_id int auto_increment primary key,
                title varchar(500),
                description varchar(700),
                normal_price DECIMAL(10,2),
                sale_price DECIMAL(10,2),
                dish_category_id int,
                best_category_id int,
                stock int,
                badge varchar(45),
                foreign key (best_category_id) references best_category(best_category_id) ON UPDATE CASCADE,
                foreign key (dish_category_id) references dish_category(dish_category_id) ON UPDATE CASCADE
)DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS image(
                        image_id int auto_increment primary key,
                        url varchar(300),
                        item_id int,
                        foreign key (item_id) references item(item_id) ON UPDATE CASCADE
)DEFAULT CHARSET=utf8;
