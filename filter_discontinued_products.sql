select Products.ProductName + ': available for sale' as checkAvailableProducts
from Products
where Products.Discontinued = 0