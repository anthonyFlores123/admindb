CREATE TABLE `Products` (
   `ProductID`       SMALLINT UNSIGNED       NOT NULL AUTO_INCREMENT,
   `ProductName`     VARCHAR(40)             NOT NULL,
   `SupplierID`      SMALLINT UNSIGNED       NOT NULL,  -- one supplier only
   `CategoryID`      TINYINT UNSIGNED        NOT NULL,
   `QuantityPerUnit` VARCHAR(20),            -- e.g., '10 boxes x 20 bags'
   `UnitPrice`       DECIMAL(10,2) UNSIGNED  DEFAULT 0,
   `UnitsInStock`    SMALLINT                DEFAULT 0,  -- Negative??
   `UnitsOnOrder`    SMALLINT UNSIGNED       DEFAULT 0,
   `ReorderLevel`    SMALLINT UNSIGNED       DEFAULT 0,
   `Discontinued`    BOOLEAN                 NOT NULL DEFAULT FALSE,
   PRIMARY KEY (`ProductID`),
   INDEX (`ProductName`),
   FOREIGN KEY (`CategoryID`) REFERENCES `Categories` (`CategoryID`),
   FOREIGN KEY (`SupplierID`) REFERENCES `Suppliers` (`SupplierID`)
);
