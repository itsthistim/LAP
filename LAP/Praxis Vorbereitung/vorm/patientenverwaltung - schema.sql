/*
  Tim Hofmann
  31.05.2023
  Patientenverwaltung - Schema
*/


-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema patientenverwaltung
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `patientenverwaltung` ;

-- -----------------------------------------------------
-- Schema patientenverwaltung
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `patientenverwaltung` ;
USE `patientenverwaltung` ;

-- -----------------------------------------------------
-- Table `patientenverwaltung`.`sozialversicherung`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `patientenverwaltung`.`sozialversicherung` ;

CREATE TABLE IF NOT EXISTS `patientenverwaltung`.`sozialversicherung` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 4;


-- -----------------------------------------------------
-- Table `patientenverwaltung`.`patient`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `patientenverwaltung`.`patient` ;

CREATE TABLE IF NOT EXISTS `patientenverwaltung`.`patient` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `firstname` VARCHAR(45) NOT NULL,
  `lastname` VARCHAR(45) NOT NULL,
  `sozialversicherung_id` INT(11) NOT NULL,
  `svnr` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `svnr_UNIQUE` (`svnr` ASC) VISIBLE,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `fk_patient_sozialversicherung1_idx` (`sozialversicherung_id` ASC) VISIBLE,
  CONSTRAINT `fk_patient_sozialversicherung1`
    FOREIGN KEY (`sozialversicherung_id`)
    REFERENCES `patientenverwaltung`.`sozialversicherung` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 7;


-- -----------------------------------------------------
-- Table `patientenverwaltung`.`befund`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `patientenverwaltung`.`befund` ;

CREATE TABLE IF NOT EXISTS `patientenverwaltung`.`befund` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `patient_id` INT(11) NOT NULL,
  `termin` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  PRIMARY KEY (`id`),
  INDEX `fk_befund_patient1_idx` (`patient_id` ASC) VISIBLE,
  CONSTRAINT `fk_befund_patient1`
    FOREIGN KEY (`patient_id`)
    REFERENCES `patientenverwaltung`.`patient` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 7;


-- -----------------------------------------------------
-- Table `patientenverwaltung`.`medikament`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `patientenverwaltung`.`medikament` ;

CREATE TABLE IF NOT EXISTS `patientenverwaltung`.`medikament` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 4;


-- -----------------------------------------------------
-- Table `patientenverwaltung`.`befund_medikament`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `patientenverwaltung`.`befund_medikament` ;

CREATE TABLE IF NOT EXISTS `patientenverwaltung`.`befund_medikament` (
  `befund_id` INT(11) NOT NULL,
  `medikament_id` INT(11) NOT NULL,
  `dosierung` VARCHAR(100) NULL DEFAULT NULL,
  PRIMARY KEY (`befund_id`, `medikament_id`),
  INDEX `fk_befund_has_medikament_medikament1_idx` (`medikament_id` ASC) VISIBLE,
  INDEX `fk_befund_has_medikament_befund1_idx` (`befund_id` ASC) VISIBLE,
  CONSTRAINT `fk_befund_has_medikament_befund1`
    FOREIGN KEY (`befund_id`)
    REFERENCES `patientenverwaltung`.`befund` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_befund_has_medikament_medikament1`
    FOREIGN KEY (`medikament_id`)
    REFERENCES `patientenverwaltung`.`medikament` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
