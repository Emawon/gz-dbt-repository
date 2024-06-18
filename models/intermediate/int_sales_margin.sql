 select
    date_date,
    orders_id,
    products_id,
    revenue,
    quantity,
    purchase_price,
    round( revenue - purchase_price * quantity , 2 ) as margin
from {{ref('stg_raw__sales')}}
join {{ref('stg_raw__product')}}
using (products_id)