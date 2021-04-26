drop table if exists item;
drop table if exists category;
drop table if exists `order`;


create table category (
    category_id bigint primary key,
    name varchar(50)
);

create table item (
    category  bigint,
    detail_hash varchar(50) primary key ,
    image varchar(500),
    alt varchar(50),
    delivery_type varchar(50),
    title varchar(50),
    description varchar(50),
    normal_price int,
    sale_price int,
    badge varchar(50),

    top_image varchar(500),
    thumb_images varchar(500),
    product_description varchar(50),
    point int,
    delivery_info varchar(500),
    delivery_fee varchar(500),
    prices int,
    detail_section varchar(500),
    stock int,
    constraint category_foreign_id foreign key (category) references category(category_id)
);

create table `order` (
    order_id bigint auto_increment primary key ,
    email varchar(500),
    detail_hash varchar(50),
    count int
);