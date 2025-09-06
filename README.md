# 📊 Pizza Sales Performance Dashboard  

This project analyzes pizza sales data using **SQL** for data preparation and **Tableau** for visualization.  
The goal is to provide an interactive dashboard that showcases KPIs, sales trends, product performance, and customer behavior.  
The dashboard helps decision-makers quickly identify revenue drivers, peak demand hours, and best-selling products.  

---

## 🚩 Problem Statement  
The business needed a **centralized dashboard** to track pizza sales performance.  
Managers required visibility into **revenue, order behavior, and top products** in order to make data-driven decisions.  

---

## 🔑 Key Features  

- **KPI Metrics**: Average Order Value, Total Revenue, Pizzas Sold, Profit Margin  
- **Monthly Revenue Trends** with Month-over-Month Growth %  
- **Hourly Sales Distribution** to identify peak demand times  
- **Channel Distribution** (Dine-in, Takeaway, Website, Other)  
- **Top 3 Bestselling Pizzas**  
- **Category-Level Sales** (Classic, Supreme, Chicken, Veggie)  
- **Basket Size Distribution** (items per order)  

---

## 🗂️ Project Files  

- [`Charts.sql`](./Charts.sql) → SQL queries for generating chart-level insights  
- [`KPI Queries.sql`](./KPI%20Queries.sql) → SQL queries for calculating KPIs  
- [`Pizza Sales Dashboard.mp4`](./Pizza%20Sales%20Dashboard.mp4) → Screen recording of the Tableau dashboard demo  

---

## 🛠️ How SQL Fits Here  

SQL was used for **data preparation** and generating insights that feed into Tableau.  
The queries demonstrate knowledge of:  

- **Aggregation functions** → `SUM()`, `COUNT()`, `ROUND()` for revenue, orders, and KPIs  
- **Grouping** → `GROUP BY` used to calculate revenue and counts by category, size, weekday, and hour  
- **Joins** → integrated sales table with supporting attributes (e.g., pizza details, order info)  
- **Filtering** → `WHERE` clauses used to exclude null values and filter by timeframes  
- **Ranking** → `ORDER BY ... LIMIT` for top 5 and bottom 5 pizzas  

### Example Insights from SQL  
- Total revenue, pizzas sold, and AOV from `KPI Queries.sql`  
- Weekly and hourly sales trends from `Charts.sql`  
- Sales contribution by **pizza category** and **pizza size**  
- Top 5 vs Bottom 5 pizzas by quantity sold  

---

## 📊 How Tableau is Used  

Tableau was used to build an **interactive dashboard** from the SQL outputs.  
The dashboard contains **filters** for Month and Weekday, enabling dynamic exploration.  
 
### 📊 Dashboard Screenshot  
![Pizza Sales Dashboard](./Pizza%20Sales%20Dashboard.png)

https://public.tableau.com/app/profile/devika.rainak/viz/PizzaBusinessPerformanceOverview/Dashboard1


### Charts Used  
- **KPI Cards** → For AOV, Revenue, Pizzas Sold, Profit Margin  
- **Bar + Line Combo Chart** → Monthly Revenue with MoM Growth (%)  
- **Area Chart** → Hourly sales trend with peaks clearly highlighted  
- **Donut Chart** → Channel Distribution (Dine-in, Takeaway, Website, Other)  
- **Bar Chart** → Top 3 Bestselling Pizzas  
- **Treemap** → Category-level sales comparison  
- **Pie Chart** → Basket Size Distribution  

Tableau enhances interactivity by letting users click on filters and instantly update all charts.  

---

## ⭐ Dashboard Highlights  

1. Peak demand occurs at **lunchtime (12–1 PM)** and **evening (6–8 PM)**.  
2. **Classic & Supreme pizzas** contribute the highest category revenue.  
3. Most customers order **1–3 items**, but **larger baskets (4–7 items)** drive nearly a third of total sales.  

---

## 🚀 How to Reproduce  

1. Clone this repository:  
   ```bash
   git clone https://github.com/Devika131681/pizza-sales-dashboard.git
