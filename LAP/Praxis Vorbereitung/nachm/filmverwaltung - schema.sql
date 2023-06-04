/*
    Tim Hofmann
    31.05.2023
    Filmverwaltung - Schema
*/

-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema filmverwaltung
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `filmverwaltung` ;

-- -----------------------------------------------------
-- Schema filmverwaltung
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `filmverwaltung` DEFAULT CHARACTER SET utf8 ;
USE `filmverwaltung` ;

-- -----------------------------------------------------
-- Table `filmverwaltung`.`studio`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `filmverwaltung`.`studio` ;

CREATE TABLE IF NOT EXISTS `filmverwaltung`.`studio` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `filmverwaltung`.`film`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `filmverwaltung`.`film` ;

CREATE TABLE IF NOT EXISTS `filmverwaltung`.`film` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `titel` VARCHAR(45) NOT NULL,
  `release` DATE NOT NULL,
  `studio_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_film_Studio`
    FOREIGN KEY (`studio_id`)
    REFERENCES `filmverwaltung`.`studio` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_film_Studio_idx` ON `filmverwaltung`.`film` (`studio_id` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `filmverwaltung`.`schauspieler`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `filmverwaltung`.`schauspieler` ;

CREATE TABLE IF NOT EXISTS `filmverwaltung`.`schauspieler` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `firstname` VARCHAR(45) NOT NULL,
  `lastname` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `filmverwaltung`.`film_schauspieler`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `filmverwaltung`.`film_schauspieler` ;

CREATE TABLE IF NOT EXISTS `filmverwaltung`.`film_schauspieler` (
  `film_id` INT NOT NULL,
  `schauspieler_id` INT NOT NULL,
  PRIMARY KEY (`film_id`, `schauspieler_id`),
  CONSTRAINT `fk_film_has_schauspieler_film1`
    FOREIGN KEY (`film_id`)
    REFERENCES `filmverwaltung`.`film` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_film_has_schauspieler_schauspieler1`
    FOREIGN KEY (`schauspieler_id`)
    REFERENCES `filmverwaltung`.`schauspieler` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_film_has_schauspieler_schauspieler1_idx` ON `filmverwaltung`.`film_schauspieler` (`schauspieler_id` ASC) VISIBLE;

CREATE INDEX `fk_film_has_schauspieler_film1_idx` ON `filmverwaltung`.`film_schauspieler` (`film_id` ASC) VISIBLE;


-- -----------------------------------------------------
-- Data for table `filmverwaltung`.`studio`
-- -----------------------------------------------------
START TRANSACTION;
USE `filmverwaltung`;
INSERT INTO `filmverwaltung`.`studio` (`id`, `name`) VALUES (DEFAULT, 'Bavaria Filmstudios');
INSERT INTO `filmverwaltung`.`studio` (`id`, `name`) VALUES (DEFAULT, 'Great American Films');
INSERT INTO `filmverwaltung`.`studio` (`id`, `name`) VALUES (DEFAULT, 'Touchstones Pictures');
INSERT INTO `filmverwaltung`.`studio` (`id`, `name`) VALUES (DEFAULT, 'Warner Brothers Pictures');

COMMIT;


-- -----------------------------------------------------
-- Data for table `filmverwaltung`.`film`
-- -----------------------------------------------------
START TRANSACTION;
USE `filmverwaltung`;
INSERT INTO `filmverwaltung`.`film` (`id`, `titel`, `release`, `studio_id`) VALUES (3000, 'Dirty Dancing', '1987-08-21', 2);
INSERT INTO `filmverwaltung`.`film` (`id`, `titel`, `release`, `studio_id`) VALUES (DEFAULT, 'Sister Act', '1992-05-29', 3);
INSERT INTO `filmverwaltung`.`film` (`id`, `titel`, `release`, `studio_id`) VALUES (DEFAULT, 'Harry Potter u. der Stein der Weisen', '2001-11-23', 4);
INSERT INTO `filmverwaltung`.`film` (`id`, `titel`, `release`, `studio_id`) VALUES (DEFAULT, 'Die unendliche Geschichte', '1984-05-20', 1);
INSERT INTO `filmverwaltung`.`film` (`id`, `titel`, `release`, `studio_id`) VALUES (DEFAULT, 'Casanova', '2006-02-09', 3);

COMMIT;


-- -----------------------------------------------------
-- Data for table `filmverwaltung`.`schauspieler`
-- -----------------------------------------------------
START TRANSACTION;
USE `filmverwaltung`;
INSERT INTO `filmverwaltung`.`schauspieler` (`id`, `firstname`, `lastname`) VALUES (DEFAULT, 'Max', 'Mustermann');
INSERT INTO `filmverwaltung`.`schauspieler` (`id`, `firstname`, `lastname`) VALUES (DEFAULT, 'Maria', 'Musterfrau');
INSERT INTO `filmverwaltung`.`schauspieler` (`id`, `firstname`, `lastname`) VALUES (DEFAULT, 'Tom', 'Cruise');

COMMIT;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
