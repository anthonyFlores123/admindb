----------Concurrecia USER 1----------------------
DECLARE
	@v_product_id int = 4,
	@v_precio1 decimal = 500,
	@v_precio2 decimal = 322,
	@v_last_update timestamp


DECLARE	@return_value int

	EXEC	@return_value = [northwind].[products_price_by_product_Id]
			@p_productid = @v_product_id;
	
	 Select
			@v_last_update = last_update
	FROM
			northwind.products
	Where 
			productid = @v_product_id

---0x00000000000007D9
DECLARE
	@v_product_id int = 4,
	@v_precio1 decimal = 500,
	@v_precio2 decimal = 620,
	@v_last_update timestamp

SET @v_last_update = 0x00000000000007D9
DECLARE	@return_value1 int
EXEC	@return_value1 = [dbo].[update_products_price_by_product_Id]
		@p_productid = @v_product_id,
		@p_UnitPrice = @v_precio1,
		@p_last_update = @v_last_update

EXEC	@return_value1 = [northwind].[products_price_by_product_Id]
		@p_productid = @v_product_id;