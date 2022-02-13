SELECT 
employees.EmployeeID,
EmployeeTerritories.TerritoryID
FROM employees
LEFT JOIN EmployeeTerritories ON employees.EmployeeID = EmployeeTerritories.EmployeeID
WHERE TerritoryID IS NULL;