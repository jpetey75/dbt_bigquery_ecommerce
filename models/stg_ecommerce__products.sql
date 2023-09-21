select 

    --id fields 
    id as product_id, 
    sku as product_sku,

    --product details 
    department as product_department, 
    category as product_category, 
    brand as product_brand, 
    name as product_name, 

    --number fields 
    {{ money('cost') }} as product_cost, 
    {{ money ('retail_price') }} as product_retail_price
  
from {{ source('ecommerce','products') }};