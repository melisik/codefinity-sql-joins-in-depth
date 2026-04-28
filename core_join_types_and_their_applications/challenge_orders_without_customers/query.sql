SELECT o.order_id, o.order_date, o.amount, customers.name as customer_name
from customers
right join orders as o
on o.customer_id = customers.customer_id