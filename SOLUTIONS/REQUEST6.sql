select ROUND(avg(f.pre_invoice_discount_pct),2) as average_discount_percentage, d.customer_code,d.customer 
from dim_customer d
join fact_pre_invoice_deductions f 
on d.customer_code = f.customer_code
where d.market='India' and f.fiscal_year=2021
group by d.customer_code,d.customer
order by average_discount_percentage desc
limit 5;