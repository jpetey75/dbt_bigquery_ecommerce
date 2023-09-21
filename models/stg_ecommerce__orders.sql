
select

    --id fields 
    order_id,
    user_id,

    --order details
    status as order_status,
    num_of_item as num_order_items,

    --order timestamps in US central time
    {{ timestamp_to_central('created_at') }}  as order_created_at,
    {{ timestamp_to_central('shipped_at') }}  as order_shipped_at,
    {{ timestamp_to_central('delivered_at') }}  as order_delivered_at,
    {{ timestamp_to_central('returned_at') }}  as order_returned_at,

    --order dates in US central time
    {{ timestamp_to_central_date('created_at') }}  as order_created_date,
    {{ timestamp_to_central_date('shipped_at') }}  as order_shipped_date,
    {{ timestamp_to_central_date('delivered_at') }}  as order_delivered_date,
    {{ timestamp_to_central_date('returned_at') }}  as order_returned_date
    
from {{ source('ecommerce','orders') }};
