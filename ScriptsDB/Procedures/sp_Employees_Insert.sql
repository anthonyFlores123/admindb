CREATE PROCEDURE sp_Employees_Insert (
@AtLastName VARCHAR(20),
@AtFirstName VARCHAR(10),
@AtTitle VARCHAR(30),
@AtTitleOfCourtesy VARCHAR(25),
@AtAddress VARCHAR(60),
@AtCity VARCHAR(15),
@AtRegion VARCHAR(15),
@AtPostalCode VARCHAR(10),
@AtCountry VARCHAR(15),
@AtHomePhone VARCHAR(24),
@AtExtension VARCHAR(4),
@AtNotes VARCHAR(200),
@AtReportsTo INTEGER,
@AtPhotoPath VARCHAR(255),
@AtSalary decimal
)
as
BEGIN
Insert Into northwind.Employees 
(
   LastName  ,     
   FirstName  ,    
   Title      ,     
  TitleOfCourtesy ,  
   Address   ,      
   City    ,        
   Region  ,        
   PostalCode  ,    
   Country       , 
   HomePhone  ,     
   Extension  ,                              
   Notes    ,       
   ReportsTo   ,    
   PhotoPath ,      
   Salary          
)
Values
(@AtLastName,@AtFirstName,@AtTitle,@AtTitleOfCourtesy,@AtAddress,@AtCity,@AtRegion,@AtPostalCode,@AtCountry,@AtHomePhone,@AtExtension,@AtNotes,@AtReportsTo,@AtPhotoPath,@AtSalary);
	
END
