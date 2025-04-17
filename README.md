# 📊 Sales Trend Analysis – Task 6

This project performs sales trend analysis using MySQL. The goal is to evaluate monthly revenue and order volume and identify the top-performing months using aggregation techniques.

## 📁 Dataset

- File: `online_sales.csv`
- Columns:
  - `order_id`
  - `order_date`
  - `product_id`
  - `amount`

## 🔧 Tools Used

- MySQL (Query Language)
- Sample Dataset (Mocked for analysis)
- Excel (for screenshot export)

## 📌 Objectives

1. Calculate monthly revenue and order volume.
2. Extract `MONTH` and `YEAR` from `order_date`.
3. Identify the top 3 months with highest revenue.
4. Display clean outputs with screenshots.

## 🧠 SQL Breakdown

### 1️⃣ Monthly Revenue & Order Volume
```sql
SELECT 
  YEAR(order_date) AS year,
  MONTH(order_date) AS month,
  COUNT(DISTINCT order_id) AS order_volume,
  SUM(amount) AS monthly_revenue
FROM 
  online_sales
GROUP BY 
  YEAR(order_date), MONTH(order_date)
ORDER BY 
  year, month;
```

### 2️⃣ Top 3 Months by Revenue
```sql
SELECT 
  YEAR(order_date) AS year,
  MONTH(order_date) AS month,
  SUM(amount) AS monthly_revenue
FROM 
  online_sales
GROUP BY 
  YEAR(order_date), MONTH(order_date)
ORDER BY 
  monthly_revenue DESC
LIMIT 3;
```

## 📸 Output Screenshots

🔹 Monthly Revenue & Order Volume  
![Monthly Revenue](screenshots/monthly_revenue_and_orders.png)

 

🔹 Top 3 Months by Revenue  
![Top 3 Months](screenshots/top_3_months_by_sales.png)
 
