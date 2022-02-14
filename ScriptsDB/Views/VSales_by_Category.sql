CREATE VIEW VSales_by_Category
AS
SELECT
 Categories.CategoryID,
 Categories.CategoryName,
 Products.ProductName,
 Sum(dbo.VOrder_Details_Extended.ExtendedPrice) AS ProductSales
FROM northwind.Categories 
 JOIN northwind.Products ON Categories.CategoryID = Products.CategoryID
 JOIN dbo.VOrder_Details_Extended ON Products.ProductID = VOrder_Details_Extended.ProductID
 JOIN northwind.Orders ON Orders.OrderID = VOrder_Details_Extended.OrderID 
WHERE Orders.OrderDate BETWEEN '1997-01-01' And '1997-12-31'
GROUP BY
 Categories.CategoryID,
 Categories.CategoryName,
 Products.ProductName;