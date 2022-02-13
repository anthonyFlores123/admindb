
delimiter $$
CREATE PROCEDURE update_products_price_by_product_Id
(
p_productid int,
p_UnitPrice decimal,
p_last_update timestamp
)
begin
UPDATE products
SET   
	  UnitPrice = p_UnitPrice,
	  last_update = CURRENT_TIMESTAMP	
WHERE 
	productid = p_productid
and 
	last_update = p_last_update;
end $$

