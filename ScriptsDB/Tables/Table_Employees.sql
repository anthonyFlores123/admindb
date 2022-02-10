CREATE TABLE `Employees` (
   `EmployeeID`      MEDIUMINT UNSIGNED  NOT NULL AUTO_INCREMENT,
                     -- [0, 65535]
   `LastName`        VARCHAR(20)         NOT NULL,
   `FirstName`       VARCHAR(10)         NOT NULL,
   `Title`           VARCHAR(30),  -- e.g., 'Sales Coordinator'
   `TitleOfCourtesy` VARCHAR(25),  -- e.g., 'Mr.' 'Ms.' (ENUM??)
   `BirthDate`       DATE,         -- 'YYYY-MM-DD'
   `HireDate`        DATE,
   `Address`         VARCHAR(60),
   `City`            VARCHAR(15),
   `Region`          VARCHAR(15),
   `PostalCode`      VARCHAR(10),
   `Country`         VARCHAR(15),
   `HomePhone`       VARCHAR(24),
   `Extension`       VARCHAR(4),
   `Photo`           BLOB,                          -- 64KB
   `Notes`           TEXT                NOT NULL,  -- 64KB
   `ReportsTo`       MEDIUMINT UNSIGNED  NULL,  -- Manager's ID
                                                -- Allow NULL for boss
   `PhotoPath`       VARCHAR(255),
   `Salary`          INT,
   INDEX (`LastName`),
   INDEX (`PostalCode`),
   PRIMARY KEY (`EmployeeID`),
   FOREIGN KEY (`ReportsTo`) REFERENCES `Employees` (`EmployeeID`)
);
