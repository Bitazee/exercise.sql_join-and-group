/* Part 4 */
Select p.productLine as "Product Line", sum(od.quantityOrdered) as "# Sold"
from products p
join orderdetails od
group by p.productLine
order by sum(od.quantityOrdered) desc; 