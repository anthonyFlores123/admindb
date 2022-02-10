CREATE TABLE `EmployeeTerritories` (
   `EmployeeID`  MEDIUMINT UNSIGNED  NOT NULL,
   `TerritoryID` VARCHAR(20) NOT NULL,
   PRIMARY KEY (`EmployeeID`, `TerritoryID`),
   FOREIGN KEY (`EmployeeID`) REFERENCES `Employees` (`EmployeeID`),
   FOREIGN KEY (`TerritoryID`) REFERENCES `Territories` (`TerritoryID`)
);
