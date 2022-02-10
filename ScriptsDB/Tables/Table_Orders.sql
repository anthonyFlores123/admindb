CREATE TABLE `Orders` (
   `OrderID`        INT UNSIGNED        NOT NULL AUTO_INCREMENT,
                    -- Use UNSIGNED INT to avoid run-over
   `CustomerID`     VARCHAR(5),
   `EmployeeID`     MEDIUMINT UNSIGNED  NOT NULL,
   `OrderDate`      DATE,
   `RequiredDate`   DATE,
   `ShippedDate`    DATE,
   `ShipVia`        TINYINT UNSIGNED,
   `Freight`        DECIMAL(10,2) UNSIGNED  DEFAULT 0,
   `ShipName`       VARCHAR(40),
   `ShipAddress`    VARCHAR(60),
   `ShipCity`       VARCHAR(15),
   `ShipRegion`     VARCHAR(15),
   `ShipPostalCode` VARCHAR(10),
   `ShipCountry`    VARCHAR(15),
   PRIMARY KEY (`OrderID`),
   INDEX (`OrderDate`),
   INDEX (`ShippedDate`),
   INDEX (`ShipPostalCode`),
   FOREIGN KEY (`CustomerID`) REFERENCES `Customers` (`CustomerID`),
   FOREIGN KEY (`EmployeeID`) REFERENCES `Employees` (`EmployeeID`),
   FOREIGN KEY (`ShipVia`)    REFERENCES `Shippers`  (`ShipperID`)
);
