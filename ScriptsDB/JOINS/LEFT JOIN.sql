SELECT 
Employees.EmployeeID,
Employees.firstName,
Employees.LastName,
employeeterritories.TerritoryID
FROM
Employees
Left JOIN EmployeeTerritories ON employees.EmployeeId = employeeterritories.EmployeeID

ORDER BY Employees.EmployeeID desc



-- CALL `northwind`.`sp_Employees_Insert`('Chris', 'Hemsworth', 'Sales Manager', 'Mr.', '1963-08-30 00:00:00', '1993-10-17 00:00:00','4110 Old Redmond Rd.', 'Tacoma', 'WA', 'EC2 7JR', 'USA', '(206) 555-9482', 3466, ' ', 'Steven Buchanan graduated from St. Andrews University, Scotland, with a BSC degree in 1976.  Upon joining the company as a sales representative in 1992, he spent 6 months in an orientation program at the Seattle office and then returned to his permanent post in London.  He was promoted to sales manager in March 1993.  Mr. Buchanan has completed the courses "Successful Telemarketing" and "International Sales Management."  He is fluent in French.', 3, 'http://accweb/emmployees/peacock.bmp',1234);


