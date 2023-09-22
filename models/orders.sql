
{{
    config(
        materialized = 'table'
    )
}}

select 

    --order details
    o.order_id, 
    o.order_status,

    --order timestamps and months
    o.order_created_at,
    o.order_created_month,
    o.order_shipped_at,
    o.order_shipped_month,
    o.order_delivered_at,
    o.order_delivered_month,

    --order item details 
    oi.order_total, 
    oi.num_order_items,

    --user details 
    u.user_id,
    u.user_age, 
    u.user_country, 
    u.user_email, 
    u.user_traffic_source

from {{ ref('stg_ecommerce__orders') }} as o 
    
    inner join {{ ref('stg_ecommerce__users') }} as u 
        on u.user_id = o.user_id

    inner join {{ ref('int_order_items_by_order') }} as oi 
        on oi.order_id = o.order_id 