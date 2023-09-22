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

	--order dates in US central time
	{{ timestamp_to_central_month('created_at') }}  as order_created_month,
	{{ timestamp_to_central_month('shipped_at') }}  as order_shipped_month,
	{{ timestamp_to_central_month('delivered_at') }}  as order_delivered_month

from {{ source('ecommerce','orders') }}
