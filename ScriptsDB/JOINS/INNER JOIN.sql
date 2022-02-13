SELECT 
Employees.EmployeeID,
Employees.firstName,
Employees.LastName,
employeeterritories.TerritoryID
FROM
Employees
JOIN EmployeeTerritories ON employees.EmployeeId = employeeterritories.EmployeeID
ORDER BY Employees.EmployeeID desc