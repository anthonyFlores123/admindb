CREATE TABLE `Order Details` (
   `OrderID`   INT UNSIGNED           NOT NULL,
   `ProductID` SMALLINT UNSIGNED      NOT NULL,
   `UnitPrice` DECIMAL(8,2) UNSIGNED  NOT NULL DEFAULT 999999.99,
                                      -- max value as default
   `Quantity`  SMALLINT(2) UNSIGNED   NOT NULL DEFAULT 1,
   `Discount`  DOUBLE(8,0)            NOT NULL DEFAULT 0, -- e.g., 0.15
   PRIMARY KEY (`OrderID`, `ProductID`),
   FOREIGN KEY (`OrderID`)   REFERENCES `Orders`   (`OrderID`),
   FOREIGN KEY (`ProductID`) REFERENCES `Products` (`ProductID`)
);
