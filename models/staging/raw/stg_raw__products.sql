with 

source as (

    select * from {{ source('raw', 'products') }}

),

renamed as (

    select
        products_id as product_id,
        purchse_price as purchase_price

    from source

)

select * from renamed