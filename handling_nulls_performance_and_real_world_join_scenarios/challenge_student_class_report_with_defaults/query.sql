-- Write your code here
select s.name as student_name,
    coalesce(c.class_name, 'Unassigned') from students s
left join classes c
on c.class_id = s.class_id