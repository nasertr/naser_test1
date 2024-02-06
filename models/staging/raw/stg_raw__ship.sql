with

    source as (select * from {{ source("raw", "ship") }}),

    renamed as (

        select orders_id, shipping_fee, logcost, cast(ship_cost as numeric) as ship_cost

        from source

    )

select *
from renamed
