WITH Output1 AS (
    SELECT 
        P.division, 
        FS.product_code, 
        P.product, 
        SUM(FS.sold_quantity) AS Total_sold_quantity
    FROM 
        dim_product P 
    JOIN 
        fact_sales_monthly FS ON P.product_code = FS.product_code
    WHERE 
        FS.fiscal_year = 2021 
    GROUP BY  
        P.division, FS.product_code, P.product
),
Output2 AS (
    SELECT 
        division, 
        product_code, 
        product, 
        Total_sold_quantity,
        RANK() OVER (PARTITION BY division ORDER BY Total_sold_quantity DESC) AS Rank_Order
    FROM 
        Output1
)
SELECT 
    division, 
    product_code, 
    product, 
    Total_sold_quantity, 
    Rank_Order
FROM 
    Output2
WHERE 
    Rank_Order IN (1, 2, 3)
ORDER BY 
    division, Rank_Order;
