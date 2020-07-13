/* Part 2 */
Select p.productName as "Product Name", sum(orde.priceEach) as "Total Sale", sum(orde.quantityOrdered) as "Total # Order"
From orderdetails orde
Join products p On orde.productCode = p.productCode
Group By p.productName
Order By sum(orde.priceEach) desc;  
