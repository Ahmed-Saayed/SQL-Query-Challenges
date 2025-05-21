select
    sal1.name
from
    salesperson sal1
where sal1.name != all(
    select
        sal2.name
    from
        salesperson sal2
    join
        orders ordd
    on
        sal2.sales_id = ordd.sales_id
    join
        company cam
    on 
        cam.com_id = ordd.com_id and cam.name = 'RED'
)