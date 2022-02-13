
SELECT 
	employeeterritories.EmployeeID, 
	Territories.TerritoryID, 
	TerritoryDescription
FROM 
EmployeeTerritories 
right JOIN Territories  ON Territories.TerritoryID = EmployeeTerritories.TerritoryId
ORDER BY employeeterritories.EmployeeID desc