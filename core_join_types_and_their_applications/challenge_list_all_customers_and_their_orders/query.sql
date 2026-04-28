select customers.customer_id, customers.name, orders.amount from customers
left join orders
on customers.customer_id = orders.customer_id
order by customer_id, order_id