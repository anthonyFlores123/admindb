DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_Employees_Insert`(
In AtLastName VARCHAR(20),
In AtFirstName VARCHAR(10),
In AtTitle VARCHAR(30),
In AtTitleOfCourtesy VARCHAR(25),
In AtBirthDate DateTime,
In AtHireDate DateTime,
In AtAddress VARCHAR(60),
In AtCity VARCHAR(15),
In AtRegion VARCHAR(15),
In AtPostalCode VARCHAR(10),
In AtCountry VARCHAR(15),
In AtHomePhone VARCHAR(24),
In AtExtension VARCHAR(4),
In AtPhoto LONGBLOB,
In AtNotes MEDIUMTEXT,
In AtReportsTo INTEGER,
IN AtPhotoPath VARCHAR(255),
In AtSalary decimal
)
BEGIN
Insert Into Employees 
(
   `LastName`  ,     
   `FirstName`  ,    
   `Title`      ,     
   `TitleOfCourtesy` ,
   `BirthDate`  ,            
   `HireDate`  ,    
   `Address`   ,      
   `City`    ,        
   `Region`  ,        
   `PostalCode`  ,    
   `Country`        , 
   `HomePhone`  ,     
   `Extension`  ,     
   `Photo`     ,                          
   `Notes`    ,       
   `ReportsTo`   ,    
   `PhotoPath` ,      
   `Salary`          
)
Values
(AtLastName,AtFirstName,AtTitle,AtTitleOfCourtesy,AtBirthDate,AtHireDate,AtAddress,AtCity,AtRegion,AtPostalCode,AtCountry,AtHomePhone,AtExtension,AtPhoto,AtNotes,AtReportsTo,AtPhotoPath,AtSalary);
	
END$$
DELIMITER ;
