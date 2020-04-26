select Categories.CategoryName, sum([Order Details].Quantity) as totalItemsSold, sum([Order Details].UnitPrice - ([Order Details].UnitPrice * [Order Details].Discount)) as totalSales
from Categories
	join Products on Categories.CategoryID = Products.CategoryID
	join [Order Details] on Products.ProductID = [Order Details].ProductID
group by Categories.CategoryName