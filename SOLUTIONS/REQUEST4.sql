with segment_counts as (
select f.fiscal_year,count(distinct f.product_code) as product_count, d.segment 
from fact_sales_monthly f
join dim_product d
on f.product_code = d.product_code
where f.fiscal_year in (2020,2021)
group by d.segment,f.fiscal_year
),
diff as (
select a.segment,
	   a.product_count as product_count_2020,
       b.product_count as product_count_2021,
       (b.product_count-a.product_count) as difference
       from segment_counts a
       join segment_counts b
       on a.segment=b.segment 
       and a.fiscal_year =2020 
       and b.fiscal_year=2021
       
)
select * from diff
order by difference desc;