with product_count as (
	select fiscal_year,count(distinct product_code) as unique_products
    from fact_sales_monthly
    where fiscal_year in (2020,2021)
    group by fiscal_year
)
select 
	a.unique_products as unique_products_2020,
    b.unique_products as unique_products,
    ROUND(
    ((a.unique_products-b.unique_products)*100.0/a.unique_products),2) as percentage_change 
    from product_count a 
    join product_count b 
    on  a.fiscal_year = 2020 and b.fiscal_year = 2021;