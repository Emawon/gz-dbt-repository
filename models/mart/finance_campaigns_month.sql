select 
    --    extract( month from date_date ) as month 
    --    ,extract( year from date_date ) as year 
    --    ,
       {{ yearmonth(date_date) }} as yearmonth
    --    ,sum( revenue ) as revenue

from {{ ref('finance_campaigns_day') }}
