-- Lista de productos que no estan Descontinuados
CREATE VIEW `VCurrentProductList`
AS
SELECT
   ProductID,
   ProductName 
FROM Products 
WHERE Discontinued = 0;
