/* Part 5 */
Select concat(emp.lastName, ' ', emp.firstName) as "Sales Rep", sum(orde.priceEach) as "Total Sale"
From employees emp
Join customers c on emp.employeeNumber = c.salesRepEmployeeNumber
Join orders o on c.customerNumber = o.customerNumber
Join orderdetails orde on o.orderNumber = orde.orderNumber
Where emp.jobTitle = "Sales Rep"
group by concat(emp.lastName, ' ', emp.firstName)
order by sum(orde.priceEach) desc;