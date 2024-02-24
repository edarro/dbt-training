
SELECT 
o.ORDERID,
o.ORDERDATE,
o.SHIPDATE,
o.SHIPMODE,
c.customerid,
c.customername,
c.segment,
c.country,
p.productid,
p.productname,
p.subcategory,
P.CATEGORY,
o.ORDERSELLINGPRICE - o.ORDERCUSTPRICE AS ORDERPROFIT,
o.ORDERCUSTPRICE,
o.ORDERSELLINGPRICE
FROM {{ ref('raw_orders') }} AS o
LEFT JOIN {{ ref('raw_customer') }} as  c
on o.customerid = c.customerid
LEFT JOIN {{ ref('raw_product') }} as p
on o.productid = p.productid