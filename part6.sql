Select monthname(paymentDate) "Month", year(paymentDate) as "Year", amount as "Total Amount"
from payments
group by monthname(paymentDate) , year(paymentDate) 
order by paymentDate asc;