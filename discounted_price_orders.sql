select 
[Order Details].OrderID, 
sum([Order Details].Quantity * [Order Details].UnitPrice) as orderSubtotal, 
sum(([Order Details].Quantity * [Order Details].UnitPrice) * [Order Details].Discount) as discountAmt,
sum(([Order Details].Quantity * [Order Details].UnitPrice) - (([Order Details].Quantity * [Order Details].UnitPrice) * [Order Details].Discount)) as discountedTotal
from [Order Details]
group by [Order Details].OrderID
