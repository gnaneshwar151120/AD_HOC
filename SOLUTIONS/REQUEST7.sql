SELECT     
    CONCAT(MONTHNAME(FS.date), ' (', YEAR(FS.date), ')') AS Month,
    FS.fiscal_year,
    ROUND(SUM(G.gross_price * FS.sold_quantity), 2) AS Gross_sales_Amount
FROM     
    fact_sales_monthly FS
JOIN     
    dim_customer C ON FS.customer_code = C.customer_code
JOIN     
    fact_gross_price G ON FS.product_code = G.product_code
WHERE     
    C.customer = 'Atliq Exclusive'
GROUP BY     
    FS.fiscal_year, MONTH(FS.date), CONCAT(MONTHNAME(FS.date), ' (', YEAR(FS.date), ')')
ORDER BY     
    FS.fiscal_year asc;