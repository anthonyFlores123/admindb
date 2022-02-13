SELECT 
Territories.TerritoryID,
EmployeeTerritories.EmployeeId
FROM Territories 
LEFT JOIN EmployeeTerritories ON Territories.TerritoryID=EmployeeTerritories.TerritoryID
WHERE EmployeeID IS NULL;