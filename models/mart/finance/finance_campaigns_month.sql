select
sum(ads_cost) as ads_cost
,sum(ads_margin) as ads_margin
,sum(quantity) as quantity
,DATE_TRUNC(date_Date , MONTH) as datemonth
from {{ ref('finance_campaigns_day') }}
group by datemonth
