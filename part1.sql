/* Part 1 */
Select c.customerName as "Customer Name", concat(emp.lastName, ' ', emp.firstName) as "Sales Rep"
From customers c
Join employees emp on c.salesRepEmployeeNumber = emp.employeeNumber
order by c.customerName ASC; 
