CREATE TABLE `CustomerCustomerDemo` (
   `CustomerID`     VARCHAR(5)   NOT NULL,
   `CustomerTypeID` VARCHAR(10)  NOT NULL,
   PRIMARY KEY (`CustomerID`, `CustomerTypeID`),
   FOREIGN KEY (`CustomerTypeID`) REFERENCES `CustomerDemographics` (`CustomerTypeID`),
   FOREIGN KEY (`CustomerID`) REFERENCES `Customers` (`CustomerID`)
);
