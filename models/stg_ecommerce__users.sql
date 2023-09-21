
select
    
    --id fields
    id as user_id,
    
    --user details 
    first_name as user_first_name,
    last_name as user_last_name,
    email as user_email,
    age as user_age,
    gender as user_gender,
    state as user_state,
    traffic_source as user_traffic_source,

    --date and time fields
    {{ timestamp_to_central('created_at') }} as user_created_at,
    {{ timestamp_to_central_date('created_at') }} as user_created_date
  
from {{ source('ecommerce','users') }};

