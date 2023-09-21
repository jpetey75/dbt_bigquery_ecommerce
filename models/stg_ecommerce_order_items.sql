
select 

    --id fields 
    id as order_item_id,
    order_id, 
    product_id,

    --order item details
    {{ money('sale_price') }} as order_item_sale_price

from {{ source('ecommerce','order_items') }};
