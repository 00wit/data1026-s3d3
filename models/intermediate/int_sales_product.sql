select
    s.*,
    p.purchase_price as unit_price
FROM {{ref("stg_raw__sales")}} as s 
JOIN {{ref("stg_raw__products")}} as p 
USING (product_id)