---Detalles de la orden extendidos---
CREATE VIEW VOrder_Details_Extended
AS
SELECT
   Order_Details.OrderID, 
   Order_Details.ProductID, 
   Products.ProductName, 
   Order_Details.UnitPrice, 
   Order_Details.Quantity, 
   Order_Details.Discount, 
   ROUND(Order_Details.UnitPrice*Quantity*(1-Discount),100) AS ExtendedPrice
FROM northwind.Products 
   JOIN northwind.Order_Details ON Products.ProductID = Order_Details.ProductID;
