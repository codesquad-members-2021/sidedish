DROP TABLE IF EXISTS item, dish_category, best_category, image;

CREATE TABLE IF NOT EXISTS dish_category(
                                dish_category_id int auto_increment primary key,
                                dish_category_name varchar(45)
);

CREATE TABLE IF NOT EXISTS best_category(
                                best_category_id int auto_increment primary key,
                                best_category_name varchar(45)
);


CREATE TABLE IF NOT EXISTS image(
                      image_id int auto_increment primary key,
                      url varchar(300)
);


CREATE TABLE IF NOT EXISTS item(
                         item_id int auto_increment primary key,
                         title varchar(500),
                         description varchar(700),
                         n_price DECIMAL(10,2),
                         s_price DECIMAL(10,2),
                         dish_category_id int,
                         best_category_id int,
                         stock int,
                         badge varchar(45),
                         image_id int,
                         foreign key (image_id) references image(image_id) ON UPDATE CASCADE,
                         foreign key (best_category_id) references best_category(best_category_id) ON UPDATE CASCADE,
                         foreign key (dish_category_id) references dish_category(dish_category_id) ON UPDATE CASCADE
);

