CREATE TABLE `Shippers` (
   `ShipperID`   TINYINT UNSIGNED  NOT NULL AUTO_INCREMENT,
   `CompanyName` VARCHAR(40)       NOT NULL,
   `Phone`       VARCHAR(24),
   PRIMARY KEY (`ShipperID`)
);
