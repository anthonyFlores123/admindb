Declare 
	@v_product_id int = 4, 
	@v_precio2 decimal = 650,
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

	DECLARE	@return_value2 int

EXEC	@return_value = [dbo].[update_products_price_by_product_Id]
		@p_productid = @v_product_id,
		@p_UnitPrice = @v_precio2,
		@p_last_update = @v_last_update

EXEC	@return_value = [northwind].[products_price_by_product_Id]
		@p_productid = @v_product_id;
