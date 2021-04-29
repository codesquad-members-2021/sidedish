-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema sidedish
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema sidedish
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `sidedish` DEFAULT CHARACTER SET utf8 ;
USE `sidedish` ;

-- -----------------------------------------------------
-- Table `sidedish`.`dish`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sidedish`.`dish` ;

CREATE TABLE IF NOT EXISTS `sidedish`.`dish` (
    `hash` CHAR(5) NOT NULL,
    `top_image` VARCHAR(225) NULL,
    `title` VARCHAR(255) NOT NULL,
    `description` VARCHAR(255) NULL,
    `normal_price` DECIMAL(6,0) NULL,
    `special_price` DECIMAL(6,0) NOT NULL,
    `section_name` VARCHAR(255) NULL,
    `stock` INT UNSIGNED NOT NULL,
    PRIMARY KEY (`hash`))
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sidedish`.`delivery`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sidedish`.`delivery` ;

CREATE TABLE IF NOT EXISTS `sidedish`.`delivery` (
    `id` INT NOT NULL,
    `is_monday` TINYINT NOT NULL,
    `delivery_type` VARCHAR(255) NOT NULL DEFAULT '새벽배송, 택배배송',
    `delivery_fee` DECIMAL(4,0) NULL DEFAULT 2500,
    `delivery_condition` DECIMAL(5,0) NULL DEFAULT 40000,
    `dish_hash` CHAR(5) NOT NULL,
    PRIMARY KEY (`id`),
    INDEX `fk_Delivery_dish1_idx` (`dish_hash` ASC) VISIBLE,
    CONSTRAINT `fk_Delivery_dish1`
    FOREIGN KEY (`dish_hash`)
    REFERENCES `sidedish`.`dish` (`hash`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sidedish`.`image`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sidedish`.`image` ;

CREATE TABLE IF NOT EXISTS `sidedish`.`image` (
    `id` INT NOT NULL,
    `image_url` VARCHAR(255) NOT NULL,
    `is_thumb` TINYINT NOT NULL,
    `dish_hash` CHAR(5) NOT NULL,
    PRIMARY KEY (`id`),
    INDEX `fk_image_dish_idx` (`dish_hash` ASC) VISIBLE,
    CONSTRAINT `fk_image_dish`
    FOREIGN KEY (`dish_hash`)
    REFERENCES `sidedish`.`dish` (`hash`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sidedish`.`event`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sidedish`.`event` ;

CREATE TABLE IF NOT EXISTS `sidedish`.`event` (
   `id` INT NOT NULL,
   `badge` VARCHAR(255) NULL,
    `dish_hash` CHAR(5) NOT NULL,
    PRIMARY KEY (`id`),
    INDEX `fk_Event_dish1_idx` (`dish_hash` ASC) VISIBLE,
    CONSTRAINT `fk_Event_dish1`
    FOREIGN KEY (`dish_hash`)
    REFERENCES `sidedish`.`dish` (`hash`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sidedish`.`best`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sidedish`.`best` ;

CREATE TABLE IF NOT EXISTS `sidedish`.`best` (
    `category_id` INT NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`category_id`))
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sidedish`.`best_dishes`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sidedish`.`best_dishes` ;

CREATE TABLE IF NOT EXISTS `sidedish`.`best_dishes` (
    `dish_hash` CHAR(5) NOT NULL,
    `best_category_id` INT NOT NULL,
    INDEX `fk_table1_dish1_idx` (`dish_hash` ASC) VISIBLE,
    INDEX `fk_table1_best1_idx` (`best_category_id` ASC) VISIBLE,
    CONSTRAINT `fk_bestdishes_dish1`
    FOREIGN KEY (`dish_hash`)
    REFERENCES `sidedish`.`dish` (`hash`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    CONSTRAINT `fk_bestdishes_best1`
    FOREIGN KEY (`best_category_id`)
    REFERENCES `sidedish`.`best` (`category_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
    ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
