with order_totals as (

    select 
        o.order_id, 
        sum(oi.order_item_sale_price) as order_total_raw,
        sum(case when p.product_department = 'Men' then oi.order_item_sale_price else 0 end) as order_total_mens_raw,
        sum(case when p.product_department = 'Women' then oi.order_item_sale_price else 0 end) as order_total_womens_raw

    from {{ ref('stg_ecommerce__orders') }} as o 

        inner join {{ ref('stg_ecommerce__order_items') }} as oi 
            on oi.order_id = o.order_id 
        
        inner join {{ ref('stg_ecommerce__products') }} as p
            on p.product_id = oi.product_id

    group by o.order_id   

)

select 
    order_id,
    {{ money('order_total_raw') }} as order_total,
    {{ money('order_total_mens_raw') }} as order_total_mens,
    {{ money('order_total_womens_raw') }} as order_total_womens

from order_totals
