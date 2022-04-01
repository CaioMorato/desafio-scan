-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Scan
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `Scan` ;

-- -----------------------------------------------------
-- Schema Scan
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Scan` ;
USE `Scan` ;

-- -----------------------------------------------------
-- Table `Scan`.`Booking`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Scan`.`Booking` (
  `BookingID` BIGINT NOT NULL AUTO_INCREMENT,
  `CurrencyCode` VARCHAR(255) NOT NULL,
  `RecordLocator` CHAR(6) NOT NULL,
  PRIMARY KEY (`BookingID`));


-- -----------------------------------------------------
-- Table `Scan`.`BookingPassenger`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Scan`.`BookingPassenger` (
  `PassengerID` BIGINT NOT NULL AUTO_INCREMENT,
  `TotalCost` FLOAT NOT NULL,
  `BookingID` BIGINT NOT NULL,
  PRIMARY KEY (`PassengerID`),
  INDEX `fk_BookingPassenger_1_idx` (`BookingID` ASC) VISIBLE,
  CONSTRAINT `booking_bookingPassenger`
    FOREIGN KEY (`BookingID`)
    REFERENCES `Scan`.`Booking` (`BookingID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table `Scan`.`PassengerJourneySegment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Scan`.`PassengerJourneySegment` (
  `PassengerID` BIGINT NOT NULL ,
  `SegmentID` BIGINT NOT NULL ,
  `DepartureStation` CHAR(3) NOT NULL,
  `ArrivalStation` CHAR(3) NOT NULL,
  `DepartureDate` DATETIME NOT NULL,
  `FlightNumber` CHAR(4) NOT NULL,
  PRIMARY KEY (`SegmentID`, `PassengerID`));


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
