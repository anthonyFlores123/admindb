CREATE TABLE `Categories` (
   `CategoryID`   TINYINT UNSIGNED  NOT NULL AUTO_INCREMENT,
                  -- [0, 255], not expected to be large
   `CategoryName` VARCHAR(30)       NOT NULL,
                  -- e.g., 'Beverages','Condiments',etc
   `Description`  TEXT,       -- up to 64KB characters
   `Picture`      BLOB,       -- up to 64KB binary
   PRIMARY KEY  (`CategoryID`),
   UNIQUE INDEX (`CategoryName`)
      -- Build index on this unique-value column for fast search
);
