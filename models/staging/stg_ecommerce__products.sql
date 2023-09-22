
select 
    id as product_id, 
    department as product_department 
  
from {{ source('ecommerce','products') }}
