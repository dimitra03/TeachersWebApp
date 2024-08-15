-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema teachersDB
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema teachersDB
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `teachersDB` DEFAULT CHARACTER SET utf8 ;
USE `teachersDB` ;

-- -----------------------------------------------------
-- Table `teachersDB`.`TEACHERS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `teachersDB`.`TEACHERS` (
  `TEACHER_ID` INT(11) NOT NULL,
  `S_NAME` VARCHAR(45) NOT NULL,
  `F_NAME` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`TEACHER_ID`),
  INDEX `Surname` (`S_NAME` ASC) VISIBLE)
ENGINE = InnoDB;

CREATE USER 'dimitratel' IDENTIFIED BY '2003';

GRANT ALL ON `teachersDB`.* TO 'dimitratel';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
