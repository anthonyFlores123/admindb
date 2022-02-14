CREATE  PROCEDURE sp_Employees_Update(
@AtEmployeeID INTEGER,
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
@AtReportsTo INTEGER,
@AtPhotoPath VARCHAR(255)
)
as
BEGIN
Update northwind.Employees
	Set
		LastName = @AtLastName,
		FirstName = @AtFirstName,
		Title = @AtTitle,
		TitleOfCourtesy = @AtTitleOfCourtesy,
		Address = @AtAddress,
		City = @AtCity,
		Region = @AtRegion,
		PostalCode = @AtPostalCode,
		Country = @AtCountry,
		HomePhone = @AtHomePhone,
		Extension = @AtExtension,
		ReportsTo = @AtReportsTo,
    PhotoPath = @AtPhotoPath
	Where
		EmployeeID = @AtEmployeeID;

END
