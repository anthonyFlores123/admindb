CREATE TABLE `Territories` (
   `TerritoryID`           VARCHAR(20)       NOT NULL,  -- ZIP code
   `TerritoryDescription`  VARCHAR(50)       NOT NULL,  -- Name
   `RegionID`              TINYINT UNSIGNED  NOT NULL,
                           -- Could use an ENUM to eliminate `Region` table
   PRIMARY KEY (`TerritoryID`),
   FOREIGN KEY (`RegionID`) REFERENCES `Region` (`RegionID`)
);
