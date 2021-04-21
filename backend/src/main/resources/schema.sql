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
-- Table `sidedish`.`delivery`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sidedish`.`delivery` ;

CREATE TABLE IF NOT EXISTS `sidedish`.`delivery` (
    `id` INT(11) NOT NULL,
    `type` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sidedish`.`menu`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sidedish`.`menu` ;

CREATE TABLE IF NOT EXISTS `sidedish`.`menu` (
    `id` INT(11) NOT NULL,
    `name` VARCHAR(45) NOT NULL,
    `endpoint` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sidedish`.`dish`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sidedish`.`dish` ;

CREATE TABLE IF NOT EXISTS `sidedish`.`dish` (
    `detail_hash` VARCHAR(50) NOT NULL,
    `image` VARCHAR(100) NOT NULL,
    `alt` VARCHAR(50) NOT NULL,
    `title` VARCHAR(50) NOT NULL,
    `description` VARCHAR(100) NOT NULL,
    `n_price` VARCHAR(45) NOT NULL,
    `menu_id` INT(11) NOT NULL,
    PRIMARY KEY (`detail_hash`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sidedish`.`dish_delivery`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sidedish`.`dish_delivery` ;

CREATE TABLE IF NOT EXISTS `sidedish`.`dish_delivery` (
    `id` INT(11) NOT NULL,
    `dish_detail_hash` VARCHAR(50) NOT NULL,
    `delivery_id` INT(11) NOT NULL,
    PRIMARY KEY (`id`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sidedish`.`sale`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sidedish`.`sale` ;

CREATE TABLE IF NOT EXISTS `sidedish`.`sale` (
    `id` INT(11) NOT NULL,
    `badge` VARCHAR(45) NOT NULL,
    `sale_type` VARCHAR(45) NOT NULL,
    `sale_vlaue` INT(11) NOT NULL,
    PRIMARY KEY (`id`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `sidedish`.`dish_sale`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sidedish`.`dish_sale` ;

CREATE TABLE IF NOT EXISTS `sidedish`.`dish_sale` (
    `id` INT(11) NOT NULL,
    `dish_detail_hash` VARCHAR(50) NOT NULL,
    `sale_id` INT(11) NOT NULL,
    PRIMARY KEY (`id`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;












