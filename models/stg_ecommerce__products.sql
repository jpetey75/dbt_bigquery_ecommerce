select 
    id as product_id, 
    round(cost, 2) as product_cost, 
    category as product_category, 
    name as product_name, 
    brand as product_brand, 
    round(retail_price, 2) as product_retail_price, 
    department as product_department, 
    sku as product_sku
  
from {{ source('ecommerce','products') }};