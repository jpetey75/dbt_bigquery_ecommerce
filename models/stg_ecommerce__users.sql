select
  id as user_id,
  first_name as user_first_name,
  last_name as user_last_name,
  email as user_email,
  age as user_age,
  gender as user_gender,
  state as user_state,
  traffic_source as user_traffic_source,
  created_at as user_created_at,  
  date(created_at) as user_created_date
  
from {{ source('ecommerce','users') }}