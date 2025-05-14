select
    row_number() over() as id, student
from 
    seat
order by
    case when id % 2 = 0 then id - 1 else id + 1 end