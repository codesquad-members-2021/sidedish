INSERT INTO `section`(id, `name`) VALUES (1, 'main');
INSERT INTO `section`(id, `name`) VALUES (2, 'soup');
INSERT INTO `section`(id, `name`) VALUES (3, 'side');
INSERT INTO `category`(id, `name`) VALUES (1, 'best');
INSERT INTO `item`(id, section, category, image, alt, top_image, title, description, n_price, s_price, delivery_fee, stock) VALUES (1, 1, 1, 'imageUrl', 'alt', 'url', 'title', 'description', 10000, 10000, 2500, 3);
INSERT INTO `detail_section`(item, item_key, url) VALUES (1, 0, 'url1');
INSERT INTO `detail_section`(item, item_key, url) VALUES (1, 1, 'url2');
INSERT INTO `detail_section`(item, item_key, url) VALUES (1, 2, 'url3');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (1, 0, 'thumb_url1');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (1, 1, 'thumb_url2');
INSERT INTO `thumb_image`(item, item_key, url) VALUES (1, 2, 'thumb_url3');
INSERT INTO `badge`(item, badge_type) VALUES (1, 'EVENT');
INSERT INTO `badge`(item, badge_type) VALUES (1, 'LAUNCHING');
INSERT INTO `delivery_type`(item, delivery_type_name) VALUES (1, 'NATIONWIDE');
INSERT INTO `delivery_type`(item, delivery_type_name) VALUES (1, 'DAWN');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (1, 'MON');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (1, 'TUE');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (1, 'WED');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (1, 'THU');
INSERT INTO `delivery_day`(item, `the_day_of_week`) VALUES (1, 'FRI');
