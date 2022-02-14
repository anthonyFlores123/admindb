----- Empleados con el mayor numero de ordenes 
ALTER VIEW [dbo].[Vtop_EmpleadosVentas] as
SELECT
EmployeeID,
Count(*) as numero_ordenes
FROM northwind.ORDERS
GROUP BY EmployeeID
