with tmp as(
    select  
        customer_number as id, count(order_number) as cnt
    from
        orders
    group by
        customer_number
)

select
    id as customer_number
from
    tmp
where
    cnt = (select max(cnt) from tmp)