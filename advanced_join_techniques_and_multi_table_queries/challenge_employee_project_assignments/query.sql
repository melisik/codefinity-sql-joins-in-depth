-- Write your code here
SELECT e.name, p1.project_name, d1.department_name from employees e
JOIN assignments a1 
ON a1.employee_id = e.employee_id
JOIN projects p1
ON p1.project_id = a1.project_id
JOIN departments d1
ON d1.department_id = p1.department_id