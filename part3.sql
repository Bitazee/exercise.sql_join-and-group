/* Part 3 */
Select distinct status, count(status) from orders
Group by status
Order by status asc;