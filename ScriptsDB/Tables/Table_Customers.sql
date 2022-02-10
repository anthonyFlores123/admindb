CREATE TABLE `Customers` (
   `CustomerID`   VARCHAR(5)   NOT NULL,
       -- First 5 letters of CompanyName
       -- Probably better to use an UNSIGNED INT
   `CompanyName`  VARCHAR(40)  NOT NULL,
   `ContactName`  VARCHAR(30),
   `ContactTitle` VARCHAR(30),
   `Address`      VARCHAR(60),
   `City`         VARCHAR(15),
   `Region`       VARCHAR(15),
   `PostalCode`   VARCHAR(10),
   `Country`      VARCHAR(15),
   `Phone`        VARCHAR(24),
   `Fax`          VARCHAR(24),
   PRIMARY KEY (`CustomerID`),
   INDEX (`City`),
   INDEX (`CompanyName`),
   INDEX (`PostalCode`),
   INDEX (`Region`)
       -- Build indexes on these columns for fast search
);
