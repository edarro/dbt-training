SELECT 
productid,
productname,
subcategory,
SUM(ORDERPROFIT) AS PROFIT
FROM {{ ref('stg_orders') }} AS o
GROUP BY 
productid, 
productname,
subcategory