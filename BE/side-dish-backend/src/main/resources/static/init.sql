-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `sidedish` DEFAULT CHARACTER SET utf8 ;
USE `sidedish` ;

-- -----------------------------------------------------
-- Table `sidedish`.`item`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sidedish`.`item` (
                                                 `id` INT NOT NULL AUTO_INCREMENT,
                                                 `title` VARCHAR(45) NOT NULL,
                                                 `description` VARCHAR(200) NOT NULL,
                                                 `normal_price` INT NOT NULL,
                                                 `sale_price` INT NOT NULL,
                                                 `badges` VARCHAR(45) NULL,
                                                 `delivery_types` VARCHAR(200) NULL,
                                                 `images` VARCHAR(2000) NULL,
                                                 `category` VARCHAR(45) NOT NULL,
                                                 PRIMARY KEY (`id`))
    ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


