-- Write your code here
SELECT a.assignment_id,
    e1.name as employee_name,
    p1.project_name,
    d.department_name
from assignments a
join employees e1
ON e1.employee_id = a.employee_id
join projects p1
ON p1.project_id = a.project_id
join departments d
on d.department_id = p1.department_id

