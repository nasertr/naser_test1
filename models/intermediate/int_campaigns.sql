SELECT *
FROM {{ ref('stg_raw__adwords') }}
UNION ALL 
SELECT *
FROM {{ ref('stg_raw__bing') }}
UNION ALL 
select*
from {{ ref('stg_raw__crito') }}
UNION ALL 
select*
from {{ ref('stg_raw__facebook') }}