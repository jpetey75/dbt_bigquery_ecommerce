
select
  order_id,
  user_id,
  status as order_status,
  created_at as order_created_at,
  date(created_at) as order_created_date,
  shipped_at as order_shipped_at,
  date(shipped_at) as order_shipped_date,
  delivered_at as order_delivered_at,
  date(delivered_at) as order_delivered_date,
  returned_at as order_returned_at,
  date(returned_at) as order_returned_date,
  num_of_item as order_items 
  
from {{ source('ecommerce','orders') }}
