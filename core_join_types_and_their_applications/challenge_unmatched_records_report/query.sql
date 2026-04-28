SELECT
    c.customer_id,
    c.name AS customer_name,
    o.order_id,
    o.order_date,
    CASE 
        WHEN o.order_id IS NULL THEN 'Customer without orders'
        WHEN c.customer_id IS NULL THEN 'Order without customer'
        ELSE 'Matched'
    END AS match_status
FROM customers AS c
FULL OUTER JOIN orders AS o
    ON c.customer_id = o.customer_id
ORDER BY
    CASE
        WHEN c.customer_id IS NULL
          OR o.order_id IS NULL THEN 0
        ELSE 1
    END,
    c.customer_id NULLS FIRST,  -- ← comma added here
    o.order_id   NULLS FIRST;