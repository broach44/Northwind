select [Order Details].OrderID, sum([Order Details].Quantity * [Order Details].UnitPrice) as orderSubtotal
from [Order Details]
group by [Order Details].OrderID