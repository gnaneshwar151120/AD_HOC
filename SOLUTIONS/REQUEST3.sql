select count(distinct product_code) as product_count, segment 
from dim_product
group by segment
order by product_count desc;