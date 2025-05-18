select
    a.employee_id
from
    employees a
left join
    salaries b
on 
    a.employee_id = b.employee_id
where
    salary is null

union 

select
    b.employee_id
from
    employees a
right join
    salaries b
on 
    a.employee_id = b.employee_id
where
    name is null
order by
    employee_id