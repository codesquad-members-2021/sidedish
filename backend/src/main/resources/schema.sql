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
    `top_image` VARCHAR(255) NOT NULL,
    `alt` VARCHAR(255) NULL,
    `title` VARCHAR(255) NOT NULL,
    `description` VARCHAR(255) NULL,
    `n_price` DECIMAL(6,0) NOT NULL,
    `s_price` DECIMAL(6,0) NULL,
    `section_name` VARCHAR(255) NULL,
    `stock` INT NOT NULL,
    `badge` VARCHAR(255) NULL,
    PRIMARY KEY (`hash`))
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sidedish`.`delivery`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sidedish`.`delivery` ;

CREATE TABLE IF NOT EXISTS `sidedish`.`delivery` (
                                                     `id` INT NOT NULL AUTO_INCREMENT,
                                                     `is_monday` TINYINT NOT NULL,
                                                     `delivery_type` VARCHAR(255) NOT NULL DEFAULT '새벽배송, 택배배송',
    `delivery_fee` DECIMAL(4,0) NOT NULL DEFAULT 2500,
    `delivert_condition` DECIMAL(5,0) NOT NULL DEFAULT 40000,
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
                                                  `id` INT NOT NULL AUTO_INCREMENT,
                                                  `image_url` VARCHAR(255) NOT NULL,
    `dish_hash` CHAR(5) NOT NULL,
    `is_thumb` TINYINT NOT NULL,
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
                                                 `id` INT NOT NULL AUTO_INCREMENT,
                                                 `category_id` INT NOT NULL,
                                                 `name` VARCHAR(255) NOT NULL,
    `dish_hash` CHAR(5) NOT NULL,
    PRIMARY KEY (`id`),
    INDEX `fk_best_dish1_idx` (`dish_hash` ASC) VISIBLE,
    CONSTRAINT `fk_best_dish1`
    FOREIGN KEY (`dish_hash`)
    REFERENCES `sidedish`.`dish` (`hash`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
    ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
