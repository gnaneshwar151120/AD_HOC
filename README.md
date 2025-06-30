# MySQL + Power BI Retail Analytics Dashboard: Atliq Exclusive (APAC)

---

## 🧾 Metadata

- **Author**: Gnaneshwar Reddy Vemunuri  
- **Domain**: Retail Data Analytics / Business Intelligence  
- **Technologies Used**: MySQL, Power BI, DAX, SQL  
- **Tools**: MySQL Workbench, Power BI Desktop, GitHub  
- **Project Type**: End-to-End BI Case Study  
- **Difficulty Level**: Intermediate  
- **Status**: ✅ Completed  
- **GitHub Repository**: [📂 View Repository]([https://github.com/gnaneshwarvemunuri/retail-analytics-mysql-powerbi](https://github.com/gnaneshwar151120/AD_HOC))
- **POWERBI**:[View File](https://github.com/gnaneshwar151120/AD_HOC/blob/main/powerbi.pbix)
- **License**: MIT

---

## 📚 Reference Dataset and Challenge

This project is part of the [Codebasics Resume Project Challenge #7](https://codebasics.io/challenge/codebasics-resume-project-challenge/7), which provides a real-world retail sales dataset for hands-on SQL and Power BI practice. The challenge simulates business questions from a fictional company, **Atliq Hardware**, to help learners build portfolio-worthy data analytics projects.

---

## 🧮 Database Schema Overview

This project uses the `gdb023` (aka `atliq_hardware_db`) MySQL database, which contains the following six core tables:

### 1. `dim_customer`

| Column         | Description |
|----------------|-------------|
| `customer_code` | Unique customer ID |
| `customer`      | Customer name |
| `platform`      | Sales platform – e.g., E-Commerce, Brick & Mortar |
| `channel`       | Channel – Retailers, Direct, Distributors |
| `market`        | Country of operation |
| `region`        | Region – APAC, EU, NA, LATAM |
| `sub_zone`      | Sub-region – e.g., India, SE Asia, ANZ, etc. |

### 2. `dim_product`

| Column         | Description |
|----------------|-------------|
| `product_code` | Unique product ID |
| `division`     | Broad category – PC, P&A, N&S |
| `segment`      | Sub-category like Notebook, Storage |
| `category`     | Product category |
| `product`      | Product name |
| `variant`      | Product tier – Standard, Plus, Premium |

### 3. `fact_gross_price`

| Column         | Description |
|----------------|-------------|
| `product_code` | Product ID reference |
| `fiscal_year`  | Fiscal year (2020/2021) |
| `gross_price`  | Base selling price |

### 4. `fact_manufacturing_cost`

| Column               | Description |
|----------------------|-------------|
| `product_code`       | Product ID reference |
| `cost_year`          | Fiscal year |
| `manufacturing_cost` | Total production cost |

### 5. `fact_pre_invoice_deductions`

| Column                   | Description |
|--------------------------|-------------|
| `customer_code`          | Customer ID |
| `fiscal_year`            | Year of transaction |
| `pre_invoice_discount_pct` | Discount applied before invoicing |

### 6. `fact_sales_monthly`

| Column         | Description |
|----------------|-------------|
| `date`         | Monthly sales date |
| `product_code` | Product ID |
| `customer_code`| Customer ID |
| `sold_quantity`| Units sold |
| `fiscal_year`  | Fiscal year |

> ℹ️ Fiscal year starts in **September** (e.g., FY 2020 = Sep 2019 to Aug 2020).

---

## 📊 SQL Challenge Summary

| No. | Objective | Output Fields | Solution |
|-----|-----------|----------------|----------|
| 1 | Markets where Atliq Exclusive operates in APAC | `market_name` | [🔗 Q1](https://github.com/gnaneshwar151120/AD_HOC/blob/main/SOLUTIONS/REQUEST1.sql) |
| 2 | % increase in unique products (2021 vs 2020) | `unique_products_2020`, `unique_products_2021`, `percentage_chg` | [🔗 Q2](https://github.com/gnaneshwar151120/AD_HOC/blob/main/SOLUTIONS/REQUEST2.sql) |
| 3 | Unique product counts by segment | `segment`, `product_count` | [🔗 Q3](https://github.com/gnaneshwar151120/AD_HOC/blob/main/SOLUTIONS/REQUEST3.sql) |
| 4 | Segment with most increase in unique products | `segment`, `product_count_2020`, `product_count_2021`, `difference` | [🔗 Q4](https://github.com/gnaneshwar151120/AD_HOC/blob/main/SOLUTIONS/REQUEST4.sql) |
| 5 | Products with highest/lowest manufacturing costs | `product_code`, `product`, `manufacturing_cost` | [🔗 Q5](https://github.com/gnaneshwar151120/AD_HOC/blob/main/SOLUTIONS/REQUEST5.sql) |
| 6 | Top 5 Indian customers by avg. discount (2021) | `customer_code`, `customer`, `average_discount_percentage` | [🔗 Q6](https://github.com/gnaneshwar151120/AD_HOC/blob/main/SOLUTIONS/REQUEST6.sql) |
| 7 | Monthly gross sales for Atliq Exclusive | `month`, `year`, `gross_sales_amount` | [🔗 Q7](https://github.com/gnaneshwar151120/AD_HOC/blob/main/SOLUTIONS/REQUEST7.sql) |
| 8 | Quarter with max sold quantity in 2020 | `quarter`, `total_sold_quantity` | [🔗 Q8](https://github.com/gnaneshwar151120/AD_HOC/blob/main/SOLUTIONS/REQUEST8.sql) |
| 9 | Top contributing channel in 2021 | `channel`, `gross_sales_mln`, `percentage` | [🔗 Q9](https://github.com/gnaneshwar151120/AD_HOC/blob/main/SOLUTIONS/REQUEST9.sql) |
| 10 | Top 3 products by division (2021) | `division`, `product_code`, `product`, `total_sold_quantity`, `rank_order` | [🔗 Q10](https://github.com/gnaneshwar151120/AD_HOC/blob/main/SOLUTIONS/REQUEST10.sql) |

---


## 🛠️ Setup Instructions

1. Clone or download the repository.
2. Load the `gdb023` database into MySQL.
3. Test SQL queries in MySQL Workbench.
4. Open Power BI Desktop → Get Data → MySQL Database.
5. Run queries or use CSVs → Build dashboards.
6. Save and publish `.pbix` file if needed.

---

## 🎯 Business Impact

This dashboard enables:
- Product team to analyze growth and segmentation.
- Sales and marketing teams to track customer discounts and region-specific contributions.
- Management to monitor profitability via cost trends and sales channels.

---

## 🔮 Future Enhancements
- Integrate Azure Synapse or Microsoft Fabric pipelines.
- Deploy auto-refresh on Power BI Service with row-level security.
- Build a Streamlit-based web dashboard version using the same data.

---

## 🙌 Acknowledgments

- [Codebasics Challenge #7](https://codebasics.io/challenge/codebasics-resume-project-challenge/7)
- Microsoft Power BI Community
- MySQL Official Docs

---

## 📎 License

This project is licensed under the **MIT License**.  
Fork it, extend it, and give credit if reused.  


![Screenshot 2025-06-30 125844](https://github.com/user-attachments/assets/4cbe2d74-6c4e-4fa2-a3a3-ed022cff3be2)
![image](https://github.com/user-attachments/assets/0dc2d4f9-2899-4421-a94a-f07c0b895c47)
![image](https://github.com/user-attachments/assets/711ad0d7-6aee-483b-b254-12f9a7f228ec)



