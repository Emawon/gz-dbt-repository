select date_date, 
    --    campaign_key,
    --    paid_source,
  
       round( sum( cast( ads_cost as float64) ) , 2 ) as ads_cost,
       round( sum( impression ) , 0 ) as impression,
       round( sum( click ) ,0 ) as click
from {{ ref('int_campaigns') }}

group by date_date
       

order by date_date desc
     
