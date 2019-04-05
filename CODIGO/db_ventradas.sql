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
CREATE SCHEMA IF NOT EXISTS `ventradas` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema ventradas
-- -----------------------------------------------------
USE `ventradas` ;

-- -----------------------------------------------------
-- Table `mydb`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ventradas`.`user` (
  `iduser` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(15) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `firstName` VARCHAR(80) NOT NULL,
  `lastName` VARCHAR(45) NOT NULL,
  `city` VARCHAR(45) NULL,
  `favoriteBand` VARCHAR(45) NULL,
  PRIMARY KEY (`iduser`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`band`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ventradas`.`band` (
  `idband` INT NOT NULL AUTO_INCREMENT,
  `bandName` VARCHAR(100) NOT NULL,
  `description` VARCHAR(200) NULL,
  `components` VARCHAR(45) NULL,
  `genre` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`idband`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`concert`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ventradas`.`concert` (
  `concertName` VARCHAR(100) NOT NULL,
  `city` VARCHAR(45) NOT NULL,
  `amoutTickets` INT NULL,
  `band_idband` INT NOT NULL,
  `band_idband1` INT NOT NULL,
  PRIMARY KEY (`band_idband`),
  INDEX `fk_concert_band1_idx` (`band_idband1` ASC),
  CONSTRAINT `fk_concert_band1`
    FOREIGN KEY (`band_idband1`)
    REFERENCES `mydb`.`band` (`idband`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`buy`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`buy` (
  `idBuy` INT NOT NULL,
  `user_iduser` INT NOT NULL,
  PRIMARY KEY (`idBuy`),
  INDEX `fk_buy_user1_idx` (`user_iduser` ASC),
  CONSTRAINT `fk_buy_user1`
    FOREIGN KEY (`user_iduser`)
    REFERENCES `mydb`.`user` (`iduser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`tickets`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ventradas`.`tickets` (
  `idtickets` INT NOT NULL,
  `price` INT NOT NULL,
  `concert_band_idband` INT NOT NULL,
  `buy_id` INT NOT NULL,
  PRIMARY KEY (`idtickets`),
  INDEX `fk_tickets_concert1_idx` (`concert_band_idband` ASC),
  INDEX `fk_tickets_buy1_idx` (`buy_id` ASC),
  CONSTRAINT `fk_tickets_concert1`
    FOREIGN KEY (`concert_band_idband`)
    REFERENCES `mydb`.`concert` (`band_idband`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tickets_buy1`
    FOREIGN KEY (`buy_id`)
    REFERENCES `mydb`.`buy` (`idBuy`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
