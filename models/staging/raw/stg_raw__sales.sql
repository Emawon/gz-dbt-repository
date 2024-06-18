with 

source as (

    select * from {{ source('raw', 'sales') }}

),

renamed as (

    select
        date_date,
        orders_id,
        pdt_id as products_id,
        concat(orders_id, "_", pdt_id) as pk,
        revenue,
        quantity

    from source

)

select * from renamed
