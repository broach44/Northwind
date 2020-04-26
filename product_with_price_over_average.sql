select products.ProductID, products.ProductName, products.UnitPrice
from Products
where products.UnitPrice > (select AVG(products.unitprice)
from products)

