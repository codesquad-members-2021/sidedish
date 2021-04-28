-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema sidedish
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `sidedish` ;

-- -----------------------------------------------------
-- Schema sidedish
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `sidedish` DEFAULT CHARACTER SET utf8 ;
USE `sidedish` ;




-- -----------------------------------------------------
-- Table `sidedish`.`menu`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sidedish`.`category` ;

CREATE TABLE IF NOT EXISTS `sidedish`.`category` (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `category_name` VARCHAR(45) NOT NULL,
    `end_point` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sidedish`.`dish`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sidedish`.`dish` ;

CREATE TABLE IF NOT EXISTS `sidedish`.`dish` (
    `detail_hash` VARCHAR(50),
    `image` VARCHAR(100),
    `title` VARCHAR(50),
    `description` VARCHAR(100),
    `price` INT(11),
    `sale_price` INT(11),
    `point` INT(11),
    `delivery_info` VARCHAR(50),
    `delivery_fee` INT(11),
    `category_id` INT(11),
    `quantity` INT(11),
    `current_date_time` TIMESTAMP,
    PRIMARY KEY (`detail_hash`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8;

-- -----------------------------------------------------
-- Table `sidedish`.`delivery`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sidedish`.`delivery` ;

CREATE TABLE IF NOT EXISTS `sidedish`.`delivery` (
    `id` INT(11) NOT NULL,
    `delivery_type` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8;

-- -----------------------------------------------------
-- Table `sidedish`.`dish_delivery`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sidedish`.`dish_delivery` ;

CREATE TABLE IF NOT EXISTS `sidedish`.`dish_delivery`(
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `dish` VARCHAR (50),
    `delivery` INT,
    CONSTRAINT dish_delivery_dish_foreign_key FOREIGN KEY (`dish`) REFERENCES `dish` (detail_hash),
    CONSTRAINT dish_delivery_delivery_foreign_key FOREIGN KEY (`delivery`) REFERENCES `delivery` (id)
);



-- -----------------------------------------------------
-- Table `sidedish`.`sale`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sidedish`.`sale` ;

CREATE TABLE IF NOT EXISTS `sidedish`.`sale` (
    `id` INT(11) NOT NULL,
    `badge` VARCHAR(45) NOT NULL,
    `sale_type` VARCHAR(45) NOT NULL,
    `sale_value` INT(11) NOT NULL,
    PRIMARY KEY (`id`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sidedish`.`dish_sale`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sidedish`.`dish_sale` ;

CREATE TABLE IF NOT EXISTS `sidedish`.`dish_sale`(
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `dish` VARCHAR (50),
    `sale` INT,
    CONSTRAINT dish_sale_dish_foreign_key FOREIGN KEY (`dish`) REFERENCES `dish` (detail_hash),
    CONSTRAINT dish_sale_sale_foreign_key FOREIGN KEY (`sale`) REFERENCES `sale` (id)
);


DROP TABLE IF EXISTS `sidedish`.`image` ;

CREATE TABLE IF NOT EXISTS `sidedish`.`image` (
    `id` INT(11) AUTO_INCREMENT NOT NULL,
    `image_url` VARCHAR(100) NOT NULL,
    `type` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sidedish`.`dish_sale`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sidedish`.`dish_image` ;

CREATE TABLE IF NOT EXISTS `sidedish`.`dish_image`(
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `dish` VARCHAR (50),
    `image` INT,
    CONSTRAINT dish_image_dish_foreign_key FOREIGN KEY (`dish`) REFERENCES `dish` (detail_hash),
    CONSTRAINT dish_image_image_foreign_key FOREIGN KEY (`image`) REFERENCES `image` (id)
);


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;












