select 
    {{yearmonth('date_date')}} as yearmonth
    ,round(sum(revenue),2) as revenue
    ,round(sum(avg_basket),2) as avg_basket
    ,round(sum(margin),2) as margin
    ,round(sum(operational_margin),2) as operational_margin
    ,round(sum(ads_margin),2) as ads_margin


from {{ ref('finance_campaigns_day') }}
group by yearmonth
order by yearmonth desc