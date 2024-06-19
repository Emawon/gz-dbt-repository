select date_date
       ,revenue
       ,margin
       ,operational_margin
       ,ads_cost
       , round( operational_margin - ads_cost , 2 ) as ads_margin

from {{ ref('finance_days') }}
join {{ ref('int_campaigns_day') }}
using (date_date)