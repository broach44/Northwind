select top(1) quarterTable.Quarter, totalRevenue
from (
	select '1' as [Quarter], sum([Order Details].Quantity * ([Order Details].UnitPrice - ([Order Details].UnitPrice * [Order Details].Discount))) as totalRevenue
	from Orders
		join [order details]
			on [order details].orderid = orders.orderid
	where OrderDate between '1997-01-01' and '1997-03-31'
	union all
	select '2' as [Quarter], sum([Order Details].Quantity * ([Order Details].UnitPrice - ([Order Details].UnitPrice * [Order Details].Discount))) as totalRevenue
	from Orders
		join [order details]
			on [order details].orderid = orders.orderid
	where OrderDate between '1997-04-01' and '1997-06-30'
	union all
	select '3' as [Quarter], sum([Order Details].Quantity * ([Order Details].UnitPrice - ([Order Details].UnitPrice * [Order Details].Discount))) as totalRevenue
	from Orders
		join [order details]
			on [order details].orderid = orders.orderid
	where OrderDate between '1997-07-01' and '1997-09-30'
	union all
	select '4' as [Quarter], sum([Order Details].Quantity * ([Order Details].UnitPrice - ([Order Details].UnitPrice * [Order Details].Discount))) as totalRevenue
	from Orders
		join [order details]
			on [order details].orderid = orders.orderid
	where OrderDate between '1997-10-01' and '1997-12-31'
) as quarterTable
order by totalRevenue desc