CREATE TABLE `Region` (
   `RegionID`           TINYINT UNSIGNED  NOT NULL AUTO_INCREMENT,
                        -- [0,255]
   `RegionDescription`  VARCHAR(50)       NOT NULL,
                        -- e.g., 'Eastern','Western','Northern','Southern'
                        -- Could use an ENUM and eliminate this table
   PRIMARY KEY (`RegionID`)
);
