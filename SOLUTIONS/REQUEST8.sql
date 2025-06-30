SELECT
    quarter_label AS Quarter,
    SUM(sold_quantity) AS total_sold_quantity
FROM (
    SELECT 
        sold_quantity,
        CASE
            WHEN date BETWEEN '2019-09-01' AND '2019-11-30' THEN '[Q1] Sep-Nov'
            WHEN date BETWEEN '2019-12-01' AND '2020-02-29' THEN '[Q2] Dec-Feb'
            WHEN date BETWEEN '2020-03-01' AND '2020-05-31' THEN '[Q3] Mar-May'
            WHEN date BETWEEN '2020-06-01' AND '2020-08-31' THEN '[Q4] Jun-Aug'
        END AS quarter_label
    FROM 
        fact_sales_monthly
    WHERE 
        fiscal_year = 2020
) AS sub
WHERE quarter_label IS NOT NULL
GROUP BY 
    quarter_label
ORDER BY 
    total_sold_quantity DESC;
