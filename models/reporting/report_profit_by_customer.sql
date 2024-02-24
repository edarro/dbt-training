select customerid,
segment,
country,
sum(orderprofit) as profit
from {{ ref('stg_orders') }}
group BY customerid,
segment,
country