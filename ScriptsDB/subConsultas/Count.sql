SELECT
	customers.customerid,
	 MONTH(Orders.orderDate)as mes, 
	 YEAR(Orders.orderDate) as anio,
	count(orders.orderid) as compras 
FROM northwind.customers
	JOIN northwind.Orders ON Orders.customerid = customers.customerid
GROUP BY 
	customers.customerid,
	MONTH(Orders.orderDate), 
	 YEAR(Orders.orderDate) 
Order by customers.customerid
