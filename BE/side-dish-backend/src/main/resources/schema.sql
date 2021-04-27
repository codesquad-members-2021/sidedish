CREATE TABLE IF NOT EXISTS `sidedish`.`category` (
                                                     `id` INT PRIMARY KEY AUTO_INCREMENT,
                                                     `name` VARCHAR(45) NOT NULL,
                                                     `best` TINYINT(1)
);

CREATE TABLE IF NOT EXISTS `sidedish`.`item` (
		`id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
		`title` VARCHAR(45) NOT NULL,
		`description` VARCHAR(200) NOT NULL,
		`normal_price` INT NOT NULL,
		`sale_price` INT NOT NULL,
		`badges` VARCHAR(45) NULL,
		`delivery_types` VARCHAR(200) NULL,
		`images` VARCHAR(2000) NULL,
		`category_name` VARCHAR(45),
		`category` INT REFERENCES category(`id`)
);
