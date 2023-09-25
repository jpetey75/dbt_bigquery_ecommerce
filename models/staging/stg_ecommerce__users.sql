
select
    
    --id fields
    id as user_id,
    
    --user details 
    age as user_age,
    email as user_email,
    country as user_country,
    traffic_source as user_traffic_source,

    --date and time fields
    {{ ntz_to_reporting_tz('created_at') }} as user_created_at,
    {{ ntz_to_reporting_tz_month('created_at') }} as user_created_month
  
from {{ source('ecommerce','users') }}

