create table category (
    id int not null auto_increment,
    name varchar(45) not null,
    type varchar(10) not null,
    primary key (id)
);

create table dish (
    id varchar(5) not null,
    main_image varchar(100) not null,
    alt varchar(45) not null,
    delivery_type varchar(45) not null,
    title varchar(45) not null,
    description varchar(45) not null,
    normal_price int not null,
    selling_price int,
    badge varchar(45),
    category_id int not null,
    top_image varchar(200) not null,
    thumb_images varchar(1000) not null,
    product_description varchar(45) not null,
    delivery_info varchar(45) not null,
    delivery_fee varchar(45) not null,
    detail_section varchar(1000) not null,
    stock int not null,
    point int not null,
    primary key (id),
    foreign key (category_id) references category (id)
);
