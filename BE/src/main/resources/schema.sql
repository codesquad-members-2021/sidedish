-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema side_dish
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema side_dish
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `side_dish` DEFAULT CHARACTER SET utf8;
USE `side_dish`;

-- -----------------------------------------------------
-- Table `side_dish`.`user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `side_dish`.`user`;
CREATE TABLE IF NOT EXISTS `side_dish`.`user` (
    `id` INT NOT NULL,
    `name` VARCHAR(45) NOT NULL,
    `email` VARCHAR(45) NOT NULL,
    `user_id` VARCHAR(45) NOT NULL,
    `token` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`id`))
    ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `side_dish`.`best_menu_category`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `side_dish`.`best_menu_category`;
CREATE TABLE IF NOT EXISTS `side_dish`.`best_menu_category` (
    `id` INT AUTO_INCREMENT,
    `name` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id`))
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `side_dish`.`menu_category`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `side_dish`.`menu_category`;
CREATE TABLE IF NOT EXISTS `side_dish`.`menu_category` (
   `id` INT AUTO_INCREMENT,
   `name` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id`))
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `side_dish`.`dish`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `side_dish`.`dish`;
CREATE TABLE IF NOT EXISTS `side_dish`.`dish` (
    `id` INT AUTO_INCREMENT,
    `hash` VARCHAR(45) NOT NULL,
    `alt` VARCHAR(45) NOT NULL,
    `title` VARCHAR(100) NOT NULL,
    `description` VARCHAR(255) NOT NULL,
    `n_price` INT NOT NULL,
    `s_price` INT NULL DEFAULT 0,
    `point` INT NULL DEFAULT 0,
    `stock` INT NOT NULL DEFAULT 10,
    `delivery_type` VARCHAR(45) NOT NULL DEFAULT '새벽배송, 전국택배',
    `delivery_info` VARCHAR(255) NOT NULL DEFAULT '서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [월 · 화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.',
    `delivery_fee` VARCHAR(45) NOT NULL DEFAULT '2,500원 (40,000원 이상 구매 시 무료)',
    `menu_category_id` INT NOT NULL,
    `best_menu_category_id` INT NULL,
    PRIMARY KEY (`id`),
    INDEX `fk_dish_menu_category1_idx` (`menu_category_id` ASC) VISIBLE,
    INDEX `fk_dish_best_menu_category1_idx` (`best_menu_category_id` ASC) VISIBLE,
    CONSTRAINT `fk_dish_menu_category1`
    FOREIGN KEY (`menu_category_id`)
    REFERENCES `side_dish`.`menu_category` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    CONSTRAINT `fk_dish_best_menu_category1`
    FOREIGN KEY (`best_menu_category_id`)
    REFERENCES `side_dish`.`best_menu_category` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `side_dish`.`badge`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `side_dish`.`badge`;
CREATE TABLE IF NOT EXISTS `side_dish`.`badge` (
   `id` INT AUTO_INCREMENT,
   `name` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id`))
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `side_dish`.`dish_badge`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `side_dish`.`dish_badge`;
CREATE TABLE IF NOT EXISTS `side_dish`.`dish_badge` (
    `id` INT AUTO_INCREMENT,
    `dish` INT NOT NULL,
    `dish_key` INT,
    `badge_id` INT NOT NULL,
    PRIMARY KEY (`id`),
    INDEX `fk_dish_badge_dish_idx` (`dish` ASC) VISIBLE,
    INDEX `fk_dish_badge_badge1_idx` (`badge_id` ASC) VISIBLE,
    CONSTRAINT `fk_dish_badge_dish`
    FOREIGN KEY (`dish`)
    REFERENCES `side_dish`.`dish` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    CONSTRAINT `fk_dish_badge_badge1`
    FOREIGN KEY (`badge_id`)
    REFERENCES `side_dish`.`badge` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `side_dish`.`image`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `side_dish`.`image`;
CREATE TABLE IF NOT EXISTS `side_dish`.`image` (
    `id` INT AUTO_INCREMENT,
    `url` VARCHAR(255) NOT NULL,
    `top` TINYINT(1) NULL,
    `dish` INT NOT NULL,
    `dish_key` INT,
    PRIMARY KEY (`id`),
    INDEX `fk_image_dish1_idx` (`dish` ASC) VISIBLE,
    CONSTRAINT `fk_image_dish1`
    FOREIGN KEY (`dish`)
    REFERENCES `side_dish`.`dish` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `side_dish`.`detail_image`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `side_dish`.`detail_image`;
CREATE TABLE IF NOT EXISTS `side_dish`.`detail_image` (
    `id` INT AUTO_INCREMENT,
    `url` VARCHAR(255) NOT NULL,
    `dish` INT NOT NULL,
    `dish_key` INT,
    PRIMARY KEY (`id`),
    INDEX `fk_detail_image_dish1_idx` (`dish` ASC) VISIBLE,
    CONSTRAINT `fk_detail_image_dish1`
    FOREIGN KEY (`dish`)
    REFERENCES `side_dish`.`dish` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
    ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
