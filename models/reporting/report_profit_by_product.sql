SELECT 

productname,
subcategory,
SUM(ORDERPROFIT) AS PROFIT
FROM {{ ref('raw_orders') }} AS o