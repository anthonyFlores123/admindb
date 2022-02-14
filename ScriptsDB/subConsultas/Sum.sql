SELECT
	orders.customerid,
	 MONTH(Orders.orderDate)as mes, 
	 YEAR(Orders.orderDate) as anio,
	sum(order_details.UnitPrice) as total
FROM northwind.Orders
	JOIN northwind.order_details ON Orders.orderid = order_details.orderid
GROUP BY 
	orders.customerid,
	MONTH(Orders.orderDate), 
	 YEAR(Orders.orderDate) 
Order by orders.customerid