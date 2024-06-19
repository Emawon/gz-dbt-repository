select 
  orders_id,
  date_date,
  sum( quantity ) as quantity,
  round( sum( purchase_cost ) , 2 ) as purchase_cost,
  round( sum( revenue ) , 2 ) as revenue,
  round( sum( margin ), 2 ) as margin 
from {{ref('int_sales_margin')}}
group by date_date , orders_id
order by date_date desc , orders_id desc