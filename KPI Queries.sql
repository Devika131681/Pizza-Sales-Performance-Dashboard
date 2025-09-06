-- KPI Queries for Dashboard
-- Total Revenue
Select round(sum(total_price),5) as Total_revenue
from sales;

-- Average ordered Value
Select 
    round(sum(total_price),5) / count(distinct order_id) as Avg_Ordered_value
from sales;

-- Total Pizzas Sold
Select sum(quantity) as Total_pizza_sold
from sales;

-- Total Orders 
Select
  count(distinct order_id) as Total_orders
from sales;

-- Average pizza per Order
SELECT 
    ROUND(AVG(pizza_count), 2) AS Avg_Pizzas_per_order
FROM (
    SELECT order_id, SUM(quantity) AS pizza_count
    FROM sales
    GROUP BY order_id
) sub;
