-- Write your code here
SELECT distinct name FROM customers
inner join orders on
customers.customer_id = orders.customer_id
