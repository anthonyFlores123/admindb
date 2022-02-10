CREATE TABLE `CustomerDemographics` (
   `CustomerTypeID`  VARCHAR(10)  NOT NULL,
   `CustomerDesc`    TEXT,        -- 64KB
   PRIMARY KEY (`CustomerTypeID`)
);
