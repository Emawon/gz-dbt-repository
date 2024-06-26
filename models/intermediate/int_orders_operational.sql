with renamed as(
    
    select 
      orders_id,
      date_date,
      quantity,
      purchase_cost,
      revenue,
      margin,
      shipping_fee,
      ship_cost + logcost as shipping_cost
    -- ,round ( margin + shipping_fee - (ship_cost + logcost) , 2 ) as operational_margin 

    from {{ref('int_orders_margin')}}
    join {{ref('stg_raw__ship')}}
    using (orders_id)
)

select *,
       round ( margin + shipping_fee - shipping_cost , 2 ) as operational_margin ,
      
from renamed