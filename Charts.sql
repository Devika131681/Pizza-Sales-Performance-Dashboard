-- Charts Required
-- Total Orders As per the Day of Week (Weekly total orders)
SELECT 
    DAYNAME(order_date) AS weekday,
    COUNT(DISTINCT order_id) AS total_orders
FROM sales
WHERE order_date IS NOT NULL
GROUP BY dayofweek(order_date), DAYNAME(order_date) 
ORDER BY dayofweek(order_date);

-- Total Orders per Hour
Select
    HOUR(STR_TO_DATE(order_time, '%h:%i %p')) AS hour_24,
    count(distinct order_id) as Total_orders
from sales
Where order_time is not null
Group by HOUR(STR_TO_DATE(order_time, '%h:%i %p'))
order by HOUR(STR_TO_DATE(order_time, '%h:%i %p'));

-- % of sale by Pizza category
Select
     pizza_category,
     count(quantity) as Total_Quantity,
     Round(Sum(total_price),2) as Total_revenue,
     concat(Round(((Sum(total_price))/(Select Sum(total_price) from sales)) *100 ,2),"%") as pct_revenue
from sales
group by pizza_category;

-- % of sale by pizza Size
Select
     pizza_size,
     Round(Sum(total_price),2) as Total_revenue,
     concat(Round(((Sum(total_price))/(Select Sum(total_price) from sales)) *100 ,2),"%") as pct_revenue
from sales
group by pizza_size;

-- Top 5 pizza 
Select
    pizza_name,
    sum(quantity) as Total_sold_quantity
from sales
Group by pizza_name
order by sum(quantity) desc
Limit 5;

-- Bottom 5 pizza
Select
    pizza_name,
    sum(quantity) as Total_sold_quantity
from sales
Group by pizza_name
order by sum(quantity) asc
Limit 5;





