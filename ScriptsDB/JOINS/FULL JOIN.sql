SELECT 
employees.EmployeeID,
EmployeeTerritories.TerritoryID
FROM northwind.employees
FULL JOIN northwind.EmployeeTerritories ON employees.EmployeeID = EmployeeTerritories.EmployeeID

UNION

SELECT 
EmployeeTerritories.EmployeeId,
Territories.TerritoryID
FROM northwind.Territories 
LEFT JOIN northwind.EmployeeTerritories ON Territories.TerritoryID=EmployeeTerritories.TerritoryID
WHERE EmployeeID IS NULL;





