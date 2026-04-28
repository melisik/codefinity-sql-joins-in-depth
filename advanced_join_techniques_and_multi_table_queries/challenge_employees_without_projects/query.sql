-- Write your code here
SELECT e.employee_id, e.name
FROM employees e
LEFT JOIN assignments a1
ON a1.employee_id = e.employee_id
WHERE a1.assignment_id is NULL
