SELECT 
employees.EmployeeID,
EmployeeTerritories.TerritoryID
FROM employees
LEFT JOIN EmployeeTerritories ON employees.EmployeeID = EmployeeTerritories.EmployeeID

UNION

SELECT 
Employees.EmployeeID,
employeeterritories.TerritoryID
FROM
EmployeeTerritories
Right JOIN  Employees ON employees.EmployeeId = employeeterritories.EmployeeID


UNION

SELECT 
EmployeeTerritories.EmployeeId,
Territories.TerritoryID
FROM Territories LEFT JOIN EmployeeTerritories ON Territories.TerritoryID=EmployeeTerritories.TerritoryID
WHERE EmployeeID IS NULL;
