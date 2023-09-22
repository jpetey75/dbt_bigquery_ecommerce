
select 
    o.order_id,
    {{ money('sum(oi.order_item_sale_price)') }} as order_total, 
    count(oi.order_item_id) as num_order_items

from {{ ref('stg_ecommerce__orders') }} as o 

    inner join {{ ref('stg_ecommerce__order_items') }} as oi 
        on oi.order_id = o.order_id 

group by o.order_id 
