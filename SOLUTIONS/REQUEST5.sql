SELECT 
    f.product_code, 
    d.product, 
    f.manufacturing_cost
FROM 
    fact_manufacturing_cost f
JOIN 
    dim_product d ON f.product_code = d.product_code
WHERE 
    f.manufacturing_cost = (
        SELECT MAX(manufacturing_cost) FROM fact_manufacturing_cost
    )
UNION ALL
SELECT 
    f.product_code, 
    d.product, 
    f.manufacturing_cost
FROM 
    fact_manufacturing_cost f
JOIN 
    dim_product d ON f.product_code = d.product_code
WHERE 
    f.manufacturing_cost = (
        SELECT MIN(manufacturing_cost) FROM fact_manufacturing_cost
    );