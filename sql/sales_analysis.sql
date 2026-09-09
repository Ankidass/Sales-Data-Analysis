-- Sales Data Analysis
-- Tools: SQL, Excel, Power BI

-- 1. View all sales records
select *
from sales_data;

-- 2. Calculate total revenue
select sum(Revenue) AS Total_Revenue
from sales_data;

-- 3. Calculate total profit
select sum(Profit) AS Total_Profit
from sales_data;

-- 4. Revenue by city
select City, sum(Revenue) AS Total_Revenue
from sales_data
group by City
order by Total_Revenue Desc;

-- 5. Revenue by product
select Product, sum(Revenue) AS Total_Revenue
from sales_data
group by Product
order by Total_Revenue Desc;

-- 6. Profit by product
select Product, sum(Profit) as Total_Profit
from sales_data
group by Product
order by Total_Profit Desc;

-- 7. Revenue by category
select Category, sum(Revenue) as Total_Revenue
from sales_data
group by Category
order by Total_Revenue desc;

-- 8. Monthly sales performance
SELECT 
    SUBSTRING(Order_Date, 1, 7) AS Sales_Month,
    SUM(Revenue) AS Total_Revenue,
    SUM(Profit) AS Total_Profit
FROM sales_data
GROUP BY SUBSTRING(Order_Date, 1, 7)
ORDER BY Sales_Month;

-- 9. Top 5 products by revenue
select Product,
sum(Revenue) as Total_Revenue
from sales_data
group by Product
order by Total_Revenue desc
limit 5;

-- 10. Total quantity sold by product
select Product, sum(Quantity) as Total_Quantity_Sold
from sales_data
group by Product
order by Total_Quantity_Sold desc;






























