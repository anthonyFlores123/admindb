delimiter $$
CREATE PROCEDURE products_price_by_product_Id 
(
 p_productid int
)
begin
SELECT
	productid,
	UnitPrice,
	last_update
FROM
	products
WHERE 
	productID = p_productid;
end $$

