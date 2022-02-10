CREATE TABLE `Suppliers` (
   `SupplierID`   SMALLINT UNSIGNED  NOT NULL AUTO_INCREMENT,
                                     -- [0, 65535]
   `CompanyName`  VARCHAR(40)        NOT NULL,
   `ContactName`  VARCHAR(30),
   `ContactTitle` VARCHAR(30),
   `Address`      VARCHAR(60),
   `City`         VARCHAR(15),
   `Region`       VARCHAR(15),
   `PostalCode`   VARCHAR(10),
   `Country`      VARCHAR(15),
   `Phone`        VARCHAR(24),
   `Fax`          VARCHAR(24),
   `HomePage`     TEXT,          -- 64KB?? VARCHAR(255)?
    PRIMARY KEY (`SupplierID`),
    INDEX (`CompanyName`),       -- UNIQUE?
    INDEX (`PostalCode`)
);
