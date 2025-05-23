select
    p.person_name
from
    (
    select 
        person_name,sum(weight) 
        over(order by turn) as sm
        from 
            queue
    )as p 
    where
        p.sm <= 1000
    order by 
        p.sm desc
    limit 1