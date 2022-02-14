CREATE VIEW VCustomer_and_Suppliers_by_City
AS
SELECT
 City,
 CompanyName,
 ContactName,
 'Customers' AS Relationship 
FROM northwind.Customers
UNION 
SELECT City,
 CompanyName,
 ContactName,
 'Suppliers'
FROM northwind.Suppliers 
