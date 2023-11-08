select a.orderNumber, total_price, sum(quantityOrdered) as number_items, shippedDate, comments, status
		from orders as a
        left join (select orderNumber, quantityOrdered, quantityOrdered * priceEach as total_price
					from orderDetails) as b
		on a.orderNumber = b.orderNumber
        group by orderNumber;
		
        
select orderNumber, count(orderNumber) as conta
from orders

group by orderNumber